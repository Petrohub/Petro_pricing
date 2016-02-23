# create_table "retail_prices", force: :cascade do |t|
#  t.decimal  "r_85"
#  t.decimal  "r_87"
#  t.decimal  "r_91"
#  t.decimal  "r_93"
#  t.decimal  "r_diesel"
#  t.decimal  "r_offroad"
#  t.integer  "retailer_id"
#  t.integer  "relation_id"
#  t.datetime "created_at",  null: false
#  t.datetime "updated_at",  null: false
#  t.integer  "supplier_id"
# end

#add_index 'retail_prices', ['retailer_id'], name: 'index_retail_prices_on_retailer_id', using: :btree

class RetailPrice < ActiveRecord::Base
  belongs_to :relation
  belongs_to :retailer
  belongs_to :supplier
end
