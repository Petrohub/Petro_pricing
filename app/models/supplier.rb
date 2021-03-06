class Supplier < User
  has_one :base_price
  has_many :relations
  has_many :retailers, through: :relations
  has_many :orders
end
