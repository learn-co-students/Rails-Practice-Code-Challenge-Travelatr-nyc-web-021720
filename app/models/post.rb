class Post < ApplicationRecord
belongs_to :destination
belongs_to :blogger
vailidates :title, presence: true
validates :content, length: {greater_than: 100}
end
