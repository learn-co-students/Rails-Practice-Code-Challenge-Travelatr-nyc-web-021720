class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :bloggers

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than:0}
    validates :bio, length: {minimum:30}

    def total_like
        total=0 
         self.posts.each do |post| 
            total+=post.likes
         end
         total
    end

    def most_like
         self.posts.max_by{|p|p.likes}
        #  byebug
    end


end
