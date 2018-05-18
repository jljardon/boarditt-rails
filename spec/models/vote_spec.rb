require 'rails_helper'

RSpec.describe Vote, type: :model do
  context "attributes" do
    let(:vote) {Vote.new(like: true, user_id: 1, post_id: 1)}
    it "has a vote" do
      expect(vote.like).to eq(true)
    end

    it "belongs to a user" do
      expect(vote.user_id).to eq(1)
    end

    it "belongs to a post" do
      expect(vote.post_id).to eq(1)
    end
  end

  context "validations" do
    let(:user) { User.create(username: 'some_guy', email: 'email@email.com', password: 'password') }

    let(:content) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat." }


    let(:valid_post_attrs) do
      {
        title: 'Post title for testing',
        content: content,
        user: user
      }
    end

    let(:post) { Post.new(valid_post_attrs) }

    it "is invalid without like" do
      vote = Vote.new(user: user, post: post)
      expect(vote).to be_invalid
    end

    it "is invalid without user" do
      vote = Vote.new(like: true, post: post)
      expect(vote).to be_invalid
    end

    it "is invalid without post" do
      vote = Vote.new(like: true, user: user)
      expect(vote).to be_invalid
    end

  end
end
