class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :game, index: true
      t.belongs_to :player, index: true
      t.integer :points

      t.timestamps null: false
    end
    add_foreign_key :scores, :games
    add_foreign_key :scores, :players
  end
end
