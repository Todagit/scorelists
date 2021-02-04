class ToeicScore < ApplicationRecord

  belongs_to :user
  has_many :comments

  validates  :test_date,              presence: true
  validates  :administration_number,  presence: true
  validates  :listening_score,        presence: true, 
                                      numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }
  validates  :reading_score,          presence: true,
                                      numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }
  
  before_save do

    # if listening_score % 5 != 0 || reading_score % 5 != 0
    #   flash.now[:alert] = '正しいスコアを入力してください'
    #   @toeic_score = ToeicScore.new(toeic_score_params)
    #   render :new
    # else
    #   self.total_score = listening_score + reading_score
    # end

    self.total_score = listening_score + reading_score
  end

end
