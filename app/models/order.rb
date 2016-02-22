class Order < ActiveRecord::Base
  belongs_to :station
  belongs_to :retailer
  belongs_to :supplier
  belongs_to :retail_price
  enum status: [:pending, :received, :in_progress, :delivery, :completed, :rejected]

  
end
