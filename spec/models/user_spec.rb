require 'rails_helper'

RSpec.describe User, type: :model do
  context "attributes" do
    let(:user) {User.create(username: "some_guy", email: "email@email.com", password: "password")}
    it "has a name" do
      expect(user.username).to eq("some_guy")
    end

    it "has an email" do
      expect(user.email).to eq("email@email.com")
    end

    it "has a password" do
      expect(user.password).to eq("password")
    end
  end
end
