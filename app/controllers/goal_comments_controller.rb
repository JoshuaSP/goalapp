class GoalCommentsController < ApplicationController
  def new
    @goal = Goal.find(params[:goal_id])
  end

  def create
    GoalComment.create(goal_comment_params)
  end

  def goal_comment_params
    params.require(:comment).permit(:body).merge({author_id: current_user.id, goal_id: params[:goal_id]})
  end
end
