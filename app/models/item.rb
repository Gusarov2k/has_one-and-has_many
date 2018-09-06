class Item < ActiveRecord::Base
	has_and_belongs_to_many :buskets
	# for has_many through
	has_many :positions
	has_many :buskets, through: :positions
	# add polymorf association
	has_many :images, as: :imageable
end
