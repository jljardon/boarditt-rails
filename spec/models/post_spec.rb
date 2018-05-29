require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(username: 'some_guy', email: 'email@email.com', password: 'password') }

  let(:content) { 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat.' }

  let(:valid_attrs) do
    {
      title: 'Post title for testing',
      content: content,
      user: user
    }
  end

  context 'attributes' do
    let(:valid_post) { Post.new(valid_attrs) }

    it 'has a title' do
      expect(valid_post.title).to eq('Post title for testing')
    end

    it 'has content' do
      expect(valid_post.content).to eq(content)
    end

    it 'belongs to a user' do
      expect(valid_post.user_id).to eq(user.id)
    end
  end

  context 'validations' do
    it 'is invalid with no title' do
      post = Post.new(content: content, user: user)
      expect(post).to be_invalid
    end

    it 'is invalid with no content' do
      post = Post.new(title: 'A title', user: user)
      expect(post).to be_invalid
    end

    it 'is invalid without user' do
      post = Post.new(title: 'A title', content: content)
      expect(post).to be_invalid
    end
  end
end
