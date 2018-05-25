class VotesController < ApplicationController
  before_action :set_post

  def create
    @vote = Vote.create(vote_params)
    redirect_to user_post_path(@post.user, @post)
  end

  def update
    @vote = Vote.update(vote_params)
    redirect_to user_post_path(@post.user, @post)
  end

  private

  def set_post
    @post = Post.find(params[:vote][:post_id])
  end

  def vote_params
    params.require(:vote).permit(:like, :user_id, :post_id)
  end
end
