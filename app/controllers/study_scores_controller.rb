class StudyScoresController < ApplicationController

  def index
    if user_signed_in?
      @study_scores = StudyScore.all
      # @study_scores = StudyScore.includes(:user)
    else
      flash[:alert] = 'スコアを閲覧するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
    end
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

  def update
    study_score = StudyScore.find(params[:id])
    study_score.update

    if study_score.update
      flash[:notice] = '模試の結果、スコアを修正・更新しました'
      redirect_to study_score_path
    else
      flash.now[:alert] = '必須項目を入力するか正しいスコアを登録してください'
      render :show
    end
  end

  def destroy
    study_score = StudyScore.find(params[:id])
    study_score.destroy

    if study_score.destroy
      redirect_to user_path
    else
      render :show
    end

  end


  

  private

  def study_score_params
    params.require(:study_score).permit(:test_name, :test_date, :japanese, :math1a, :math2b, :worldhistory, :japanesehistory, :modernsociety, :geography, :chemistry, :physics, :english_l, :english_r).merge(user_id: current_user.id)
  end
  
end
