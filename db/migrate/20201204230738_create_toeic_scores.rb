class CreateToeicScores < ActiveRecord::Migration[5.2]
  def change
    create_table :toeic_scores do |t|

      t.timestamps
      t.references :user,                 null:false, foreign_key: true
      t.date :test_date,                  null:false
      t.integer :administration_number,   null:false
      t.integer :listening_score,         null:false
      t.integer :reading_score,           null:false
      t.integer :total_score
    end
  end
end
