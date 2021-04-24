class CreateStudyScores < ActiveRecord::Migration[5.2]
  def change
    create_table :study_scores do |t|

      t.timestamps
      t.references :user,         null:false, foreign_key: true
      t.string     :test_name,    null:false
      t.date       :test_date,    null:false
      t.integer    :japanese
      t.integer    :math1a
      t.integer    :math2b
      t.integer    :worldhistory
      t.integer    :japanesehistory
      t.integer    :modernsociety
      t.integer    :geography
      t.integer    :chemistry
      t.integer    :physics
      t.integer    :english_l
      t.integer    :english_r
      t.integer    :other1
      t.integer    :other2
      t.integer    :total_score
    end
  end
end
