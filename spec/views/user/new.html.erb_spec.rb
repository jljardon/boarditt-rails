require 'rails_helper'

RSpec.describe "user/new", type: :view do
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
  end
end
