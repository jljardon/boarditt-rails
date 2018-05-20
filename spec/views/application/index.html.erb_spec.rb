require 'rails_helper'

RSpec.describe "application/index", type: :view do

  context "Application" do

    it 'loads the home page and login form' do
      visit "/"
      expect(page).to have_text("Username:")
      expect(page).to have_text("Password:")
      expect(page).to have_field 'user[username]'
      expect(page).to have_field 'user[password]'
      expect(page).to have_button 'Login'
      expect(page).to have_link 'Sign up', href: new_user_path
      expect(page.status_code).to eq(200)
    end

    it "lets the user login and creates a session" do
      let(:user) { User.create(username: 'some_guy', email: 'email@email.com', password: 'password') }
      visit "/"
      fill_in("user[username]", :with => user.username)
      fill_in("user[password]", :with => user.password)
      click_button('Login')
      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_content("Welcome #{user.name}")
      expect(page).to have_text("Your posts:")
      expect(page.get_rack_session_key('user_id')).to_not be_nil
    end

  end
end
