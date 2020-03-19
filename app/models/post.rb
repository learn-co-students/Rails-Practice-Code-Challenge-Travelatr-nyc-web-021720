class Post < ApplicationRecord
    belongs_to :destination
    belongs_to :blogger

    validates :likes, presence: true
    validates :title ,presence: true
    validates :content,length: {minimum:100}


end
