class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true , uniqueness: {
    message: "Already in use. Please input a different username." }
  validates :email, presence: true, format: { without: /\s+/, message: "cannot be blank or contain blank spaces." }
  validates :password, confirmation: { case_sensitive: true }


  has_many :posts
  has_many :votes
  has_many :voted_posts, through: :votes , source: :post, foreign_key: "post_id"
  has_many :comments
  has_many :commented_posts, through: :comments , source: :post, foreign_key: "post_id"
  has_secure_password

  def self.top_3_posters
    User.select('username').joins(:posts).group(:username).limit(3).order("count_username DESC").count
  end
end
