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

    @toeic_score = ToeicScore.new(toeic_score_params)

    if @toeic_score.valid?
      @toeic_score.save
      flash[:notice] = 'スコアを登録しました'
      redirect_to user_path
    else
      binding.pry
      flash.now[:alert] = '必須項目を入力してください'
      @toeic_score = ToeicScore.new(toeic_score_params)
      render :new
    end

  end

  def edit
  end

  private

  def toeic_score_params
    params.require(:toeic_score).permit(:test_date, :administration_number, :listening_score, :reading_score, :total_score).merge(user_id: current_user.id)
  end

end
