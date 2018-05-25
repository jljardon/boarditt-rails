require_relative '../rails_helper.rb'

describe 'Feature Test: User Login', type: :feature do
  it 'lets the user login and creates a session' do
    @user = create_standard_user
    user_login
    expect(current_path).to eq("/users/#{@user.id}")
    expect(page).to have_content("Welcome #{@user.username}")
    expect(page).to have_text('Your posts:')
    expect(page.get_rack_session_key('user_id')).to_not be_nil
  end

  it 'prevents user from viewing user show page and redirects to home page if not logged in' do
    create_standard_user
    visit '/users/1'
    expect(current_path).to eq('/')
    expect(page).to have_content('Sign up')
  end
end

describe 'Feature Test: User Signout', type: :feature do
  it "successfully destroys session hash when 'Logout' is clicked" do
    create_standard_user
    user_login
    expect(page).to have_link 'Logout', href: logout_path
    click_link('Logout')
    expect(page.get_rack_session).to_not include('user_id')
  end
end

describe 'Feature Test: User vote', type: :feature do
  it 'casts a vote on a post' do
    @user = create_standard_user
    @post = create_post
    user_login
    visit "/users/#{@user.id}/posts/#{@post.id}"
    choose('Upvote')
    click_button 'Vote'
    expect(@post.votes.count).to eq(1)
  end
end
