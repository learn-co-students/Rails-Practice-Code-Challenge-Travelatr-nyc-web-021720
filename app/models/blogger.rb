class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness: true 
  validates :age, numericality:{greater_than: 0}
  validates :bio, length:{minimum: 30}

  def likes 
    arr=self.posts
    
    arr.reduce{|sum,post| sum += post.likes }
  end 

end 
