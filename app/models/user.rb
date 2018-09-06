class User < ActiveRecord::Base
	has_one :busket
	# if delete row user to delete all his row orders, for it have add code dependent: :destroy
	has_many :orders, dependent: :destroy
	# add polymorf associaons
	has_many :images, as: :imageable
end
