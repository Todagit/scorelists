class StudyScore < ApplicationRecord

  belongs_to :user

  validates  :test_name, presence: true
  validates  :japanese, 
             numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
             
  validates  :math1a, :math2b, :worldhistory, :japanesehistory, :modernsociety, :geography, 
             :chemistry, :physics, :english_l, :english_r, :other1, :other2,
             numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
