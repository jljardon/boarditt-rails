require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:user) { User.create(username: 'some_guy', email: 'email@email.com', password: 'password') }

  let(:content) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat." }


  let(:valid_post_attrs) do
    {
      title: 'Post title for testing',
      content: content,
      user: user
    }
  end

  let(:valid_post) { Post.new(valid_post_attrs) }

  let(:valid_comment_attrs) do
    {
      content: content,
      user: user,
      post: valid_post
    }
  end


  context "attributes" do
    let(:valid_comment) { Comment.new(valid_comment_attrs) }

    it "has content" do
      expect(valid_comment.content).to eq(content)
    end

    it "belongs to a user" do
      expect(valid_comment.user_id).to eq(user.id)
    end

    it "belongs to a post" do
      expect(valid_comment.post_id).to eq(valid_post.id)
    end
  end

  context "validations" do
    it "is invalid with no content" do
      comment = Comment.new(post: valid_post, user: user)
      expect(comment).to be_invalid
    end

    it "is invalid without a user" do
      comment = Comment.new(post: valid_post, content: content)
      expect(comment).to be_invalid
    end

    it "is invalid without a post" do
      comment = Comment.new(user: user, content: content)
      expect(comment).to be_invalid
    end
  end
end
