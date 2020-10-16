class CreateStudyScores < ActiveRecord::Migration[5.2]
  def change
    create_table :study_scores do |t|

      t.timestamps
      t.references :user,    null:false, foreign_key: true
      t.string     :test_name
      t.date       :test_date
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
    end
  end
end
