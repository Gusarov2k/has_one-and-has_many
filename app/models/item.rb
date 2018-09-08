class Item < ActiveRecord::Base
	# for has_many through
	has_many :positions
	has_many :buskets, 	through: :positions, source: :container,
											source_type: "Busket"
	has_many :orders, 	through: :positions, source: :container,
											source_type: "Order"
	# add polymorf association
	has_many :images, as: :imageable
end
