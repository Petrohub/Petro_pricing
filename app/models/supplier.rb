class Supplier < ActiveRecord::Base
	has_one :base_price
	has_many :relations
	has_many :retailers, through: :relations
end
