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

  context "validations" do
    it "is invalid with no username" do
      user = User.new(email: "email@email.com", password: "password")
      expect(user).to be_invalid
    end

    it "is invalid with no email" do
      user = User.new(username: "a_user", password: "password")
      expect(user).to be_invalid
    end

    it "is invalid when username is non-unique" do
      User.create(username: "a_user", email: "email@email.com", password: "password")
      user = User.new(username: "a_user", email: "email@email.com", password: "password")
      expect(user).to be_invalid
    end
  end
end
