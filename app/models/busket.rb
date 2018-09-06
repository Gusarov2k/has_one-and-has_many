class Busket < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :items
	# has_many through
	has_many :positions
	has_many :items, through: :positions

# add castom method add item quantity in busket
	def add_item(i)
		if items.include?(i)
			positions.where(item_id: i.id).first.increment!(:quantity)
		else
			positions.create(item: i, quantity: 1)
		end
	end
end
