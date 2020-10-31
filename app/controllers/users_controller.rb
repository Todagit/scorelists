class UserController < ApplicationController

  def show
    @nickname = current_user.nickname
    # @study_scores = Study_scores.where(user_id: current_user.id)
  end
  
end
