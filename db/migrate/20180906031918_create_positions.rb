class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|

      t.integer :item_id
      t.integer :container_id
      t.integer :quantity, default: 1
      t.timestamps null: false
    end

    add_index :positions, [:item_id, :busket_id]
    add_index :positions, [:busket_id, :item_id]
  end
end
