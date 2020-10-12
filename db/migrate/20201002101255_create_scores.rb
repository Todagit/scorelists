class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|

      t.timestamps
      t.references :user,    null:false, foreign_key: true
      t.integer    :score1
      # t.integer    :score
      # t.integer    :score
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
