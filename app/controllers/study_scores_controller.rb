class StudyScoresController < ApplicationController

  def index
  end

  def new
    if user_signed_in?
      @study_score = StudyScore.new
    else
      flash[:alert] = '新しいスコアを登録するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
    end
  end

  def create
  end

  def edit
  end
  
end
