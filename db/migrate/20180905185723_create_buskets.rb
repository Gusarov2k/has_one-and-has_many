class CreateBuskets < ActiveRecord::Migration
  def change
    create_table :buskets do |t|

      t.timestamps null: false
    end
  end
end
