class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :toeic_score
end
