class StudyScore < ApplicationRecord

  belongs_to :user

  validates  :test_name, presence: true
  
end
