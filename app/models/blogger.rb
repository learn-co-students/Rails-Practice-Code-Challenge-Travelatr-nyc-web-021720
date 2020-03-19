class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :bloggers

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than:0}
    validates :bio, length: {minimum:30}

    def total_like
        total=[] 
         self.posts.each do |post| 
            total.push(post.likes)
         end
         total.sum
        #  <label> Total Likes: <%= likes_arr.sum %> </label>

    end

    def most_like
         self.posts.max_by{|p|p.likes}
    end


end
