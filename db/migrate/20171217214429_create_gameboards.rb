class CreateGameboards < ActiveRecord::Migration[5.1]
  def change
    create_table :gameboards do |t|
      t.integer :slots
      t.boolean :complete
      t.string :winner
      t.string :player_one
      t.string :player_two
      t.integer :player_turn, default: 1
      t.timestamps
    end
  end
end
