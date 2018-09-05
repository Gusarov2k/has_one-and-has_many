class CreateCartsItems < ActiveRecord::Migration
  def self.up
  	# deprecated first_key add id: false
    create_table :carts_items, id: false do |t|
    	# t.references :cart
    	t.integer :cart_id
    	# t.references :item
    	t.integer :item_id
    end

    # add index 
    add_index :carts_items, [:item_id, :cart_id]
		add_index :carts_items, [:cart_id, :item_id]
  end

  # if rollback this migration method delete 
  def self.down
  	drop_table :carts_items
  end
end
