class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|

      t.timestamps
      t.references :user,    null:false, foreign_key: true
      t.integer    :japanese
      t.integer    :math1
      t.integer    :math2
      t.integer    :worldhistory
      t.integer    :japanesehistory
      t.integer    :modernsociety
      t.integer    :geography
      t.integer    :chemistry
      t.integer    :physics
      t.integer    :english
    end
  end
end
