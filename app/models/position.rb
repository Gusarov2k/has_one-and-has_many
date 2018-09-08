class Position < ActiveRecord::Base
	# polymorh has_many through
	belongs_to :container, polymorphic: true
end
