class ToeicScore < ApplicationRecord

  belongs_to :user

  validates  :test_date,              presence: true
  validates  :administration_number,  presence: true
  validates  :listening_score,        presence: true, 
                                      numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }
  validates  :reading_score,          presence: true,
                                      numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }

  # validates  :listening_score,        numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }
  # validates  :reading_score,          numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 495 }
  
  before_save do
    self.total_score = listening_score + reading_score
  end

end
