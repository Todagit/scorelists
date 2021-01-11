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

  def show
  end
  

  private

  def study_score_params
    params.require(:study_score).permit(:test_name, :test_date, :japanese, :math1a, :math2b, :worldhistory, :japanesehistory, :modernsociety, :geography, :chemistry, :physics, :english_l, :english_r).merge(user_id: current_user.id)
  end
  
end
