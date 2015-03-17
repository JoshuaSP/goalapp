class CommentsController < ApplicationController
  def new
    @goal = Goal.find(params[:goal_id])
  end

  def create
    if params[:goal_id]
      @comment = Comment.new(comment_params.merge({
                          author_id: current_user.id }))

      @comment.commentable_id = params[:goal_id]
      @comment.commentable_type = :Goal

      @comment.save
      goal = Goal.find(params[:goal_id].to_i)

      redirect_to user_url(goal.user)
    else
      @comment = Comment.new(comment_params.merge({
                          author_id: current_user.id }))
      @comment.commentable_id = params[:user_id]
      @comment.commentable_type = :User

      @comment.save

      redirect_to user_url(@comment.commentable_id)
    end
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
