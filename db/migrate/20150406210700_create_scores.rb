class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :round
      t.belongs_to :gameplayer, index: true

      t.timestamps null: false
    end
    add_foreign_key :scores, :gameplayers
  end
end
