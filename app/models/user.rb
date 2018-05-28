class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :password, confirmation: { case_sensitive: true }


  has_many :posts
  has_many :votes
  has_many :voted_posts, through: :votes , source: :post, foreign_key: "post_id"
  has_many :comments
  has_secure_password
end
