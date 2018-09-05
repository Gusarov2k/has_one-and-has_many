class User < ActiveRecord::Base
	has_one :busket
	# if delete all links column add dependent: :destroy
	has_many :orders, dependent: :destroy
end
