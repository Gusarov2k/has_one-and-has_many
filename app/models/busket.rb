class Busket < ActiveRecord::Base
	belongs_to :user
	# polymorh has_many through
	has_many :positions, as: :container
	has_many :items, through: :positions

# add castom method add item quantity in busket
	def add_item(i)
		if items.include?(i)
			positions.where(item_id: i.id).first.increment!(:quantity)
		else
			positions.create(item: i, quantity: 1)
		end
	end
# method delete item on his id
	def remove_position(position_to_remove_id)
		positions.where(item_id: position_to_remove_id).first.try(:destroy)
	end
end
