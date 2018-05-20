class PostsController < ApplicationController
  before_action :require_logged_in

  def new
    @post = Post.new(user_id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    # binding.pry
    respond_to do |format|
      if @post.save
        format.html { redirect_to user_post_path(@post.user,@post), notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @post = Post.find(params[:id])
    # raise.params.inspect
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
