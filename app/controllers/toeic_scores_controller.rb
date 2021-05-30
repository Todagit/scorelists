class ToeicScoresController < ApplicationController

  def index

    if user_signed_in?
      # @toeic_scores = ToeicScore.all
      @toeic_scores = ToeicScore.includes(:user)
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
      redirect_to toeic_scores_path
      # redirect_to "/users/#{current_user.id}"
    else
      flash.now[:alert] = '必須項目を入力するか正しいスコアを登録してください'
      @toeic_score = ToeicScore.new(toeic_score_params)
      render :new
    end

  end

  def edit
  end

  def update
    toeic_score = ToeicScore.find(params[:id])
    toeic_score.update
    
    if toeic_score.update
      redirect_to toeic_scores_path
      # redirect_to "/users/#{current_user.id}"
    else
      render :show
    end 
  end

  def destroy
    toeic_score = ToeicScore.find(params[:id])
    toeic_score.destroy
    
    if toeic_score.destroy
      # redirect_to toeic_scores_path
      redirect_to "/users/#{current_user.id}"
    else
      render :show
    end 
  end

  def show
    @comment = Comment.new
    @comments = @toeic_score.comments.includes(:user)
  end


  private

  def toeic_score_params
    params.require(:toeic_score).permit(:test_date, :administration_number, :listening_score, :reading_score, :total_score).merge(user_id: current_user.id)
  end

end
