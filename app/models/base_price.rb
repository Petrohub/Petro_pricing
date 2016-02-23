# create_table "base_prices", force: :cascade do |t|
#    t.decimal  "b_85"
#    t.decimal  "b_87"
#    t.decimal  "b_91"
#    t.decimal  "b_93"
#    t.decimal  "b_diesel"
#    t.decimal  "b_offroad"
#    t.integer  "supplier_id"
#    t.datetime "created_at",  null: false
#    t.datetime "updated_at",  null: false
#  end

#  add_index "base_prices", ["supplier_id"], name: "index_base_prices_on_supplier_id", using: :btree

class BasePrice < ActiveRecord::Base
  after_update :update_retail_customers
  belongs_to :supplier

  def update_retail_customers
    supplier.relations.each do |relation|
      relation.retail_price.r_85 = b_85 + relation.f_85
      relation.retail_price.r_87 = b_87 + relation.f_87
      relation.retail_price.r_91 = b_91 + relation.f_91
      relation.retail_price.r_93 = b_93 + relation.f_93
      relation.retail_price.r_diesel = b_diesel + relation.f_diesel
      relation.retail_price.r_offroad = b_offroad + relation.f_offroad
      relation.retail_price.save
    end
  end
end
