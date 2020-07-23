class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :class
      t.integer :level
      t.boolean :can_detect_magic
      t.integer :gold

      t.timestamps
    end
  end
end
