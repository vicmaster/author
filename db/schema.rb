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

ActiveRecord::Schema.define(version: 20160919053135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "categories_products", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  add_index "categories_products", ["category_id"], name: "index_categories_products_on_category_id", using: :btree
  add_index "categories_products", ["product_id"], name: "index_categories_products_on_product_id", using: :btree

  create_table "orders", force: true do |t|
    t.string   "number",          limit: 15
    t.decimal  "item_total",                 precision: 8, scale: 2, default: 0.0, null: false
    t.decimal  "total",                      precision: 8, scale: 2, default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.datetime "completed_at"
    t.integer  "bill_address_id"
    t.decimal  "payment_total",              precision: 8, scale: 2, default: 0.0
    t.string   "payment_state"
    t.string   "email"
  end

  create_table "orders_products", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "order_id",   null: false
  end

  add_index "orders_products", ["order_id"], name: "index_orders_products_on_order_id", using: :btree
  add_index "orders_products", ["product_id"], name: "index_orders_products_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name",                                 default: "", null: false
    t.text     "description"
    t.datetime "available_on"
    t.datetime "deleated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",        precision: 8, scale: 2,              null: false
    t.string   "sku",                                  default: "", null: false
  end

end
