class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    # redirect_to "/users/#{comment.user.id}"  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, toeicscore_id: params[:toeicscore_id])
  end
end
