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

ActiveRecord::Schema.define(version: 20160218203609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_prices", force: :cascade do |t|
    t.float    "b_reg"
    t.float    "b_mid"
    t.float    "b_pre"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "base_prices", ["supplier_id"], name: "index_base_prices_on_supplier_id", using: :btree

  create_table "relations", force: :cascade do |t|
    t.integer  "retailer_id"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "f_reg"
    t.float    "f_mid"
    t.float    "f_pre"
  end

  create_table "retail_prices", force: :cascade do |t|
    t.float    "r_reg"
    t.float    "r_mid"
    t.float    "r_pre"
    t.integer  "retailer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "supplier_id"
  end

  add_index "retail_prices", ["retailer_id"], name: "index_retail_prices_on_retailer_id", using: :btree
  add_index "retail_prices", ["supplier_id"], name: "index_retail_prices_on_supplier_id", using: :btree

  create_table "retailers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "retailers", ["name"], name: "index_retailers_on_name", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "suppliers", ["name"], name: "index_suppliers_on_name", using: :btree

  add_foreign_key "base_prices", "suppliers"
  add_foreign_key "retail_prices", "retailers"
  add_foreign_key "retail_prices", "suppliers"
end
