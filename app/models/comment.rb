class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :toeic_score

  validates  :text, presence: true
end
