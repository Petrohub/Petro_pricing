class RetailPrice < ActiveRecord::Base
  has_many :relations
  belongs_to :retailer
  belongs_to :supplier
end
