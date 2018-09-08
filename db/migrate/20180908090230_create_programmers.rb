class CreateProgrammers < ActiveRecord::Migration
  def change
    create_table :programmers, :inherits => :employee  do |t|
    	t.string :programmers_column
    end
  end
end
