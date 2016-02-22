class RetailPrice < ActiveRecord::Base
  belongs_to :relation
  belongs_to :retailer
  belongs_to :supplier
end
