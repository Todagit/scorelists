class ToeicScoresController < ApplicationController

  def index

    if user_signed_in?
      @toeic_scores = ToeicScore.all
      # @toeic_scores = ToeicScore.includes(:user)
    else
      flash[:alert] = 'スコアを閲覧するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
    end

  end


  def new

    if user_signed_in?
      @toeic_score = ToeicScore.new
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
