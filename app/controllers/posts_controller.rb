class PostsController < ApplicationController
  before_action :require_logged_in
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(user_id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to user_post_path(@post.user, @post), notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @vote = Vote.find_or_initialize_by(user_id: current_user.id, post_id: params[:id])
  end

  def edit; end

  def update
    if user_is_owner(@post.user)
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to user_post_path(@post.user, @post), notice: 'Post was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if user_is_owner(@post.user)
      @post.destroy
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
