class CreateGameplayers < ActiveRecord::Migration
  def change
    create_table :gameplayers do |t|
      t.belongs_to :game, index: true
      t.belongs_to :player, index: true

      t.timestamps null: false
    end
    add_foreign_key :gameplayers, :games
    add_foreign_key :gameplayers, :players
  end
end
