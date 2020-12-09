class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    # @study_scores = StudyScores.where(user_id: current_user.id)
  end
  
end
