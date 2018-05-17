require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:content) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat." }

  let(:valid_attrs) do
    {
      content: content,
      user_id: 1,
      post_id: 1
    }
  end

  context "attributes" do
    let(:valid_comment) { Comment.new(valid_attrs) }

    it "has content" do
      expect(valid_comment.content).to eq(content)
    end

    it "belongs to a user" do
      expect(valid_comment.user_id).to eq(1)
    end

    it "belongs to a post" do
      expect(valid_comment.post_id).to eq(1)
    end
  end
end
