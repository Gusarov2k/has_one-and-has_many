class Order < ActiveRecord::Base
	belongs_to :user
	has_many :positionsm as: :container
	has_many :items, through: :positions
end
