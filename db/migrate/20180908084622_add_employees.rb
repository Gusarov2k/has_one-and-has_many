class AddEmployees < ActiveRecord::Migration
  def change
  	create_table :employees do |t|
	  	t.string 	:subtipe
	  	t.string	:first_name
	  	t.string	:last_name
	  	t.string	:salery
	  	t.timestamps
  	end
  end
end
