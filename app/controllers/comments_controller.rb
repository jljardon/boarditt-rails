class CommentsController < ApplicationController
  before_action :require_logged_in
  before_action :set_comment, only: %i[edit update destroy]

  def new
    @comment = Comment.new(post_id: params[:post_id], user_id: current_user.id)
  end

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to user_post_path(@comment.post.user, @comment.post), notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to user_post_path(@comment.post.user, @comment.post), notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    if user_is_owner(@comment.user)
      @comment.destroy
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
