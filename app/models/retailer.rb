class Retailer < User
  has_many :relations
  has_many :suppliers, through: :relations
  has_many :retail_prices
  has_many :stations
  has_many :orders
end
