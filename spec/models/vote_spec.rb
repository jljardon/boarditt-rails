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
end
