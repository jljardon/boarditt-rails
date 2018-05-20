require 'rails_helper'

RSpec.describe "User", type: :view do
  context "Creates new user" do
    it 'loads the new user page and sign in form' do
      visit "/users/new"
      expect(page).to have_text("Email:")
      expect(page).to have_text("Username:")
      expect(page).to have_text("Password:")
      expect(page).to have_text("Password confirmation:")
      expect(page).to have_field 'user[email]'
      expect(page).to have_field 'user[username]'
      expect(page).to have_field 'user[password]'
      expect(page).to have_field 'user[password_confirmation]'
      expect(page).to have_button 'Sign up'
      expect(page.status_code).to eq(200)
    end

    it "fills the form and creates a new user" do
      visit "/users/new"
      fill_in("user[email]", :with => "email@email.com")
      fill_in("user[username]", :with => "test_user")
      fill_in("user[password]", :with => "password")
      fill_in("user[password_confirmation]", :with => "password")
      click_button('Sign up')
      expect(page).to have_content("Welcome test_user!")
      expect(page).to have_text("Your posts:")
      expect(current_path).to eq('/users/1')
    end
  end
end
