#create_table "stations", force: :cascade do |t|
#  t.string   "brand"
#  t.string   "business_name"
#  t.string   "tin"
#  t.string   "phone_number"
#  t.string   "contact_person"
#  t.string   "cell_number"
#  t.string   "address1"
#  t.string   "address2"
#  t.string   "city"
#  t.string   "state"
#  t.string   "zip"
#  t.string   "station_reg_number"
#  t.integer  "retailer_id"
#  t.datetime "created_at",         null: false
#  t.datetime "updated_at",         null: false
#end


class Station < ActiveRecord::Base
  belongs_to :retailer
  has_many :tanks, dependent: :destroy
  has_many :orders
end
