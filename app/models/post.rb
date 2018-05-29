class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :commenters, through: :comments, source: :user, foreign_key: 'user_id'
  accepts_nested_attributes_for :votes

  def votes_attributes=(vote_attributes)
    vote_attributes['0'][:like] = nil if vote_attributes['0'][:like] == '0'
    Vote.create(like: vote_attributes['0'][:like], user_id: vote_attributes['0'][:user], post: self)
  end
end
