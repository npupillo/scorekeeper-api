class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token

      t.timestamps null: false
    end
  end
end
