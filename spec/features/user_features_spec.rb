require_relative '../rails_helper.rb'

describe 'Feature Test: User Login', type: :feature do
  it 'lets the user login and creates a session' do
    user = create_standard_user
    visit '/'
    fill_in('user[username]', with: user.username)
    fill_in('user[password]', with: user.password)
    click_button('Login')
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content("Welcome #{user.username}")
    expect(page).to have_text('Your posts:')
    expect(page.get_rack_session_key('user_id')).to_not be_nil
  end

end

describe 'Feature Test: User Signout', type: :feature do
  it "successfully destroys session hash when 'Logout' is clicked" do
    create_standard_user
    visit '/'
    user_login
    expect(page).to have_link 'Logout', href: logout_path
    click_link('Logout')
    expect(page.get_rack_session).to_not include('user_id')
  end
end
