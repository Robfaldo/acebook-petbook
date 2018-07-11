class LikesController < ApplicationController
  before_action :current_user, only: [:create, :destroy]

  def create
    @like = Like.create(like_params.merge(user: current_user))
    flash[:success] = "Comment created!"
    redirect_to root_path
  end

private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
