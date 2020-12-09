class ToeicScore < ApplicationRecord

  belongs_to :user

  validates  :test_date,              presence: true
  validates  :administration_number,  presence: true
  validates  :listening_score,        presence: true
  validates  :total_score,            presence: true
end
