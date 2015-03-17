class UserCommentsController < ApplicationController
  def create
    @comment = UserComment.create(user_comment_params)

    redirect_to user_url(@comment.user)
  end

  def user_comment_params
    params.require(:comment).permit(:body).merge({author_id: current_user.id, user_id: params[:user_id]})
  end
end
