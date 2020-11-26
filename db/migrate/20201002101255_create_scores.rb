class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|

      t.timestamps
      t.references :user,    null:false, foreign_key: true
      t.string     :title1,  null:false
      t.integer    :score1,  null:false
      t.string     :title2
      t.integer    :score2
      t.string     :title3
      t.integer    :score3
      # t.integer    :score
      # t.integer    :score
      # t.integer    :score
      # t.integer    :score
      # t.integer    :score
      # t.integer    :score
      # t.integer    :score
    end
  end
end
