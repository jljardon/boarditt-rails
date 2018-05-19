require 'rails_helper'

RSpec.describe "application/index", type: :view do

  context "Application" do

    it 'loads the home page an login form' do
      visit "/"
      expect(page).to have_text("Username:")
      expect(page).to have_text("Password:")
      expect(page).to have_field 'user[username]'
      expect(page).to have_field 'user[password]'
      expect(page).to have_button 'Login'
      expect(page).to have_link 'Sign up', href: new_user_path
      expect(page.status_code).to eq(200)
    end



  end
end
