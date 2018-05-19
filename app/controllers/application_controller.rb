class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    @user = User.new
  end
end
