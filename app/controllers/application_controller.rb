class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user,  :logged_in?, :user_is_owner
  before_action :current_user
  before_action :require_logged_in, except: %i[new create home]

  def home
    if logged_in?
      redirect_to posts_path
    else
      @user = User.new
    end
  end

  def logged_in?
    !!current_user
  end

  def require_logged_in
    redirect_to root_path unless logged_in?
  end

  def user_is_owner(object_user)
    current_user == object_user
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end



end
