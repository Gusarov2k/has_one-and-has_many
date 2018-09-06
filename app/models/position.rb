class Position < ActiveRecord::Base
	# has_many through
	belongs_to :item
	belongs_to :busket
end
