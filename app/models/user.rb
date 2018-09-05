class User < ActiveRecord::Base
	has_one :busket
	has_many :orders
end
