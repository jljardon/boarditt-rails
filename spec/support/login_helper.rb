module LoginHelper

  def user_login
    fill_in('user[username]', :with => "some_user")
    fill_in('user[password]', :with => "password")
    click_button('Login')
  end


  def create_standard_user
    @user = User.create(
      email: "email@email.com",
      username: "some_user",
      password: "password"
      )
  end


end
