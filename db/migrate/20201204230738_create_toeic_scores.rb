class CreateToeicScores < ActiveRecord::Migration[5.2]
  def change
    create_table :toeic_scores do |t|

      t.timestamps
      t.date :test_date
      t.integer :administration_number
      t.integer :listening_score
      t.integer :reading_score
      t.integer :total_score
    end
  end
end
