require 'rails_helper'

RSpec.describe "Comment", type: :view do
  context "Edit a comment" do
    #
    it 'loads the edit comment page and edit comment form' do
      @user = create_standard_user
      @post = create_post
      @comment = create_comment
      user_login
      visit "/posts/#{@post.id}/comments/#{@comment.id}/edit"
      expect(page).to have_text("Content:")
      expect(page).to have_field 'comment[content]'
      expect(page).to have_content("#{@comment.content}")
      expect(page).to have_button 'Comment'
      expect(page.status_code).to eq(200)
    end

    it "fills the form and updates a comment" do
      @user = create_standard_user
      @post = create_post
      @comment = create_comment
      user_login
      visit "/posts/#{@post.id}/comments/#{@comment.id}/edit"
      fill_in("comment[content]", :with => "Some other comment content")
      click_button('Comment')
      expect(current_path).to eq("/users/#{@user.id}/posts/#{@post.id}")
      expect(page).to have_content("Some other comment content")
    end
  end
end
