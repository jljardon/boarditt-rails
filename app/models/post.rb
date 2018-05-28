class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :votes
  has_many :voters, through: :votes ,  source: :user, foreign_key: "user_id"
  has_many :comments

end
