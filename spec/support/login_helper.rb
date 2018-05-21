module LoginHelper

  def user_login
    visit '/'
    fill_in('user[username]', :with => "some_user")
    fill_in('user[password]', :with => "password")
    click_button('Login')
  end

  def create_post
    @post = Post.create(title: "A post", content: "Content of the post", user_id: 1)
  end


  def create_standard_user
    @user = User.create(
      email: "email@email.com",
      username: "some_user",
      password: "password"
      )
  end


end
