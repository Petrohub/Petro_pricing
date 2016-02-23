# create_table "orders", force: :cascade do |t|
#  t.string   "order_number"
#  t.decimal  "o_85",            default: 0.0
#  t.decimal  "o_87",            default: 0.0
#  t.decimal  "o_91",            default: 0.0
#  t.decimal  "o_93",            default: 0.0
#  t.decimal  "o_diesel",        default: 0.0
#  t.decimal  "o_offroad",       default: 0.0
#  t.integer  "retailer_id"
#  t.integer  "supplier_id"
#  t.integer  "station_id"
#  t.integer  "retail_price_id"
#  t.decimal  "sub_total"
#  t.decimal  "delivery"
#  t.integer  "status",          default: 0
#  t.decimal  "total"
#  t.datetime "created_at",                    null: false
#  t.datetime "updated_at",                    null: false
# end

class Order < ActiveRecord::Base
  before_save :generate_sub_total
  before_create :generate_order_number
  after_save :generate_sub_total
  after_update :generate_total
  belongs_to :station
  belongs_to :retailer
  belongs_to :supplier
  belongs_to :retail_price
  enum status: [:pending, :received, :in_progress, :delivery, :completed, :rejected]

  def generate_order_number
    rand_num = SecureRandom.hex(1).upcase
    self.order_number = rand_num + retailer.account_number.split('-')[1] + retailer.account_number.split('-')[0]
  end

  def generate_sub_total
    o_85_sub_total = o_85 * retailer.retail_prices.where(supplier_id: supplier.id).last.r_85
    o_87_sub_total = o_87 * retailer.retail_prices.where(supplier_id: supplier.id).last.r_87
    o_91_sub_total = o_91 * retailer.retail_prices.where(supplier_id: supplier.id).last.r_91
    o_93_sub_total = o_93 * retailer.retail_prices.where(supplier_id: supplier.id).last.r_93
    o_diesel_sub_total = o_diesel * retailer.retail_prices.where(supplier_id: supplier.id).last.r_diesel
    o_offroad_sub_total = o_offroad * retailer.retail_prices.where(supplier_id: supplier.id).last.r_offroad
    self.sub_total = o_85_sub_total + o_87_sub_total + o_91_sub_total + o_93_sub_total + o_diesel_sub_total + o_offroad_sub_total
  end

  def generate_total
    self.total = sub_total + delivery
  end
end
