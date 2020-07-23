class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :item_id
      t.integer :player_id

      t.timestamps
    end
  end
end
