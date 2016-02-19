# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160219210124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_prices", force: :cascade do |t|
    t.decimal  "b_85"
    t.decimal  "b_87"
    t.decimal  "b_91"
    t.decimal  "b_93"
    t.decimal  "b_diesel"
    t.decimal  "b_offroad"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "base_prices", ["supplier_id"], name: "index_base_prices_on_supplier_id", using: :btree

  create_table "relations", force: :cascade do |t|
    t.integer  "retailer_id"
    t.integer  "supplier_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.decimal  "f_85"
    t.decimal  "f_87"
    t.decimal  "f_91"
    t.decimal  "f_93"
    t.decimal  "f_diesel"
    t.decimal  "f_offroad"
    t.integer  "retail_price_id"
  end

  create_table "retail_prices", force: :cascade do |t|
    t.decimal  "r_85"
    t.decimal  "r_87"
    t.decimal  "r_91"
    t.decimal  "r_93"
    t.decimal  "r_diesel"
    t.decimal  "r_offroad"
    t.integer  "retailer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "supplier_id"
  end

  add_index "retail_prices", ["retailer"], name: "index_retail_prices_on_retailer", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
