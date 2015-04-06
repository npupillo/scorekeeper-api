class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :pscore
      t.integer :round
      t.belongs_to :player, index: true
      t.belongs_to :game, index: true
      
      t.timestamps null: false
    end
    add_foreign_key :scores, :players
    add_foreign_key :scores, :games
  end
end
