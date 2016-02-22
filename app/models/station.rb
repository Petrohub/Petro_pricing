class Station < ActiveRecord::Base
  belongs_to :retailer
  has_many :tanks, dependent: :destroy
  has_many :orders
end
