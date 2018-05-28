class SessionsController < ApplicationController
  def create
    if auth
      @user = User.find_by(email: auth['info']['email'], username: auth['info']['name'])
      @user ||= User.create(username: auth['info']['name'],
                            email:  auth['info']['email'],
                            password:  SecureRandom.urlsafe_base64)
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'Welcome to boarditt!'
    else
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user), notice: 'Welcome back to boarditt!'
      else
        if !@user
          flash[:alert] = "Username not found."
          redirect_to root_path
        else
          flash[:alert] = "Incorrect password."
          redirect_to root_path
        end
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
