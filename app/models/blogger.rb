class Blogger < ApplicationRecord
has_many :posts
has_many :destinations, through: :posts

validates :name, uniqueness: true
validates :age, numericality: {greater_than: 0}
validates :bio, length: {greater_than: 30}
end
