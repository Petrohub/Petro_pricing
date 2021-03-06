# create_table "relations", force: :cascade do |t|
#  t.integer  "retailer_id"
#  t.integer  "supplier_id"
#  t.datetime "created_at",      null: false
#  t.datetime "updated_at",      null: false
#  t.decimal  "f_85"
#  t.decimal  "f_87"
#  t.decimal  "f_91"
#  t.decimal  "f_93"
#  t.decimal  "f_diesel"
#  t.decimal  "f_offroad"
#  t.integer  "retail_price_id"
# end

class Relation < ActiveRecord::Base
  after_save :gen_retail_price
  belongs_to :retailer
  belongs_to :supplier
  has_one :retail_price
  def gen_retail_price
    @retail_price = RetailPrice.new
    @retail_price.r_85 = supplier.base_price.b_85 + f_85
    @retail_price.r_87 = supplier.base_price.b_87 + f_87
    @retail_price.r_91 = supplier.base_price.b_91 + f_91
    @retail_price.r_93 = supplier.base_price.b_93 + f_93
    @retail_price.r_diesel = supplier.base_price.b_diesel + f_diesel
    @retail_price.r_offroad = supplier.base_price.b_offroad + f_offroad
    @retail_price.retailer = retailer
    @retail_price.supplier = supplier
    @retail_price.relation_id = id
    @retail_price.save
  end
end
