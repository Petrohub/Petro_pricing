# create_table "tanks", force: :cascade do |t|
#  t.string   "type_of_fuel"
#  t.integer  "size"
#  t.string   "registration_number"
#  t.integer  "station_id"
#  t.datetime "created_at",          null: false
#  t.datetime "updated_at",          null: false
# end

class Tank < ActiveRecord::Base
  belongs_to :station
end
