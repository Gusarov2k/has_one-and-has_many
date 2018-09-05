class CreateBuskets < ActiveRecord::Migration
  def change
    create_table :buskets do |t|

      t.integer :user_id
    end
  end
end
