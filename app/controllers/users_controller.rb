class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    # @study_scores = StudyScores.where(user_id: current_user.id)
  end

  def edit
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end


  
end
