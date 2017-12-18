class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :owner
      t.integer :xposition
      t.integer :yposition
      t.integer :gameboard_id
      t.timestamps
    end
  end
end
