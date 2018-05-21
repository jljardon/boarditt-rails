require 'rails_helper'

RSpec.describe "Post", type: :view do
  context "Edit a post" do

    it 'loads the edit post page and edit post form' do
      @user = create_standard_user
      @post = create_post
      user_login
      # binding.pry
      visit "/users/#{@user.id}/posts/#{@post.id}/edit"
      expect(page).to have_text("Title:")
      expect(page).to have_text("Content:")
      expect(page).to have_field 'post[title]'
      expect(page).to have_field 'post[content]'
      expect(page).to have_button 'Post'
      expect(page.status_code).to eq(200)
    end

    it "fills the form and updates a post" do
      @user = create_standard_user
      @post = create_post
      user_login
      visit "/users/#{@user.id}/posts/#{@post.id}/edit"
      fill_in("post[title]", :with => "Some other title")
      fill_in("post[content]", :with => "Some other content")
      click_button('Post')
      expect(current_path).to eq("/users/#{@user.id}/posts/1")
      expect(page).to have_content("Post by #{@user.username}")
      expect(page).to have_content("Some other title")
      expect(page).to have_content("Some other content")
    end
  end
end
