# create_table "users", force: :cascade do |t|
#  t.string   "email",                  default: "", null: false
#  t.string   "encrypted_password",     default: "", null: false
#  t.string   "reset_password_token"
#  t.datetime "reset_password_sent_at"
#  t.datetime "remember_created_at"
#  t.integer  "sign_in_count",          default: 0,  null: false
#  t.datetime "current_sign_in_at"
#  t.datetime "last_sign_in_at"
#  t.inet     "current_sign_in_ip"
#  t.inet     "last_sign_in_ip"
#  t.datetime "created_at",                          null: false
#  t.datetime "updated_at",                          null: false
#  t.string   "type"
#  t.string   "first_name"
#  t.string   "last_name"
#  t.string   "phone_number"
#  t.string   "cell_number"
#  t.string   "tax_id"
#  t.string   "business_name"
#  t.string   "address1"
#  t.string   "address2"
#  t.string   "city"
#  t.string   "state"
#  t.string   "zip_code"
#  t.string   "years_in_business"
#  t.string   "account_number"
# end

# add_index "users", ["account_number"], name: "index_users_on_account_number", using: :btree
# add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
# add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

class User < ActiveRecord::Base
  before_create :generate_account_number
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?
    self.class.name.downcase.to_sym
  end

  def admin?
    type == 'Admin'
  end

  def retailer?
    type == 'Retailer'
  end

  def supplier?
    type == 'Supplier'
  end

  # this method generates and assigns random account number to the users
  def generate_account_number
    rand_num = SecureRandom.hex(3).upcase
    self.account_number = admin? ? 'EGYPT' + rand_num : retailer? ? 'RET-NJ' + rand_num : supplier? ? 'SUP-NJ' + rand_num : 0
  end
end
