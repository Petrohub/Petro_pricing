class Retailer < ActiveRecord::Base
	has_many :relations
	has_many :suppliers, through: :relations
	has_many :retail_prices
end
