require 'rails_helper'

RSpec.describe "Comment", type: :view do
  context "Creates new comment" do

    it 'loads the new comment page and create comment form' do
      @user = create_standard_user
      @post = create_post
      user_login
      visit "/posts/#{@post.id}/comments/new"
      expect(page).to have_text("Content:")
      expect(page).to have_field 'comment[content]'
      expect(page).to have_button 'Comment'
      expect(page.status_code).to eq(200)
    end

    it "fills the form and creates a new comment" do
      @user = create_standard_user
      @post = create_post
      user_login
      visit "/posts/#{@post.id}/comments/new"
      fill_in("comment[content]", :with => "Comment content")
      click_button('Comment')
      expect(current_path).to eq("/users/#{@user.id}/posts/#{@post.id}")
      expect(page).to have_content("Comment content")
    end

  end
end
