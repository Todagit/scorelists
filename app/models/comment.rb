class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :toeic_score
  belongs_to :study_score

  validates  :text, presence: true
end
