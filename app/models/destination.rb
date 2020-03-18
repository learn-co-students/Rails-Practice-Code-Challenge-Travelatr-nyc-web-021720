class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent_post
        self.posts.last(5)
    end

    def most_likes
        self.posts.max_by{|p|p.likes}
    end
    
    def avg_age
        total_ages=self.bloggers.reduce(0){|sum,b|sum+b.age}
        total_bloggers=self.bloggers.count

        avg=total_ages/total_bloggers

        avg
    end


end
