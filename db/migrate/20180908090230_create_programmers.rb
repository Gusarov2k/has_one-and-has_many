class CreateProgrammers < ActiveRecord::Migration
  def change
    create_table :programmers do |t|
    	# add refer on bos table
    	t.references :employee
    	t.string :programmers_column
    end
    # work only PostgresSQL
    # cti_create_view('Programmer')
  end
end
