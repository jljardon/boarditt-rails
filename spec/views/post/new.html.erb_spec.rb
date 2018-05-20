require 'rails_helper'

RSpec.describe "Post", type: :view do
  context "Creates new post" do

    it 'loads the new post page and creats post form' do
      create_standard_user
      user_login
      visit "/posts/new"
      expect(page).to have_text("Title:")
      expect(page).to have_text("Content:")
      expect(page).to have_field 'post[title]'
      expect(page).to have_field 'post[content]'
      expect(page).to have_button 'Post'
      expect(page.status_code).to eq(200)
    end

    it "fills the form and creates a new post" do
      @user = create_standard_user
      user_login
      visit "/posts/new"
      fill_in("post[title]", :with => "Post title")
      fill_in("post[content]", :with => "Post content")
      click_button('Post')
      expect(current_path).to eq('/post/1')
      expect(page).to have_content("Post by #{@user.username}")
      expect(page).to have_content("Post title")
      expect(page).to have_content("Post content")
    end
  end
end
