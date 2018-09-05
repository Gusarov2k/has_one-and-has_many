class CreateCartsItems < ActiveRecord::Migration
  def self.up
  	# deprecated first_key add id: false
    create_table :buskets_items, id: false do |t|
    	# t.references :cart
    	t.integer :busket_id
    	# t.references :item
    	t.integer :item_id
    end

    # add index 
    add_index :buskets_items, [:item_id, :busket_id]
		add_index :buskets_items, [:busket_id, :item_id]
  end

  # if rollback this migration method delete 
  def self.down
  	drop_table :buskets_items
  end
end
