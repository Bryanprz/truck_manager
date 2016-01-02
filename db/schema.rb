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

ActiveRecord::Schema.define(version: 20150720015343) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "disposal_sites", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "address",     limit: 255
    t.integer  "material_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "disposal_sites", ["material_id"], name: "index_disposal_sites_on_material_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "order_id",    limit: 4
    t.float    "amount",      limit: 24
    t.date     "date_worked"
    t.date     "due_date"
    t.text     "notes",       limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "invoices", ["order_id"], name: "index_invoices_on_order_id", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id",             limit: 4
    t.integer  "material_quantity_kg", limit: 4
    t.integer  "dollar_amount",        limit: 4
    t.text     "notes",                limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.boolean  "sellable",   limit: 1
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "notes", force: :cascade do |t|
    t.date     "date"
    t.integer  "note_type",  limit: 4
    t.integer  "owner_id",   limit: 4
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id",      limit: 4
    t.date     "order_date"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "payment_terms",  limit: 255
    t.string   "payment_method", limit: 255
    t.text     "notes",          limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.integer  "invoice_id",   limit: 4
    t.date     "date"
    t.float    "amount",       limit: 24
    t.string   "payment_type", limit: 255
    t.text     "notes",        limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "payments", ["invoice_id"], name: "index_payments_on_invoice_id", using: :btree

  create_table "pickup_sites", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "distance_km",  limit: 4
    t.integer  "line_item_id", limit: 4
    t.text     "notes",        limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "trips", ["line_item_id"], name: "index_trips_on_line_item_id", using: :btree

  create_table "truck_capacities", force: :cascade do |t|
    t.integer  "truck_id",                   limit: 4
    t.integer  "material_quantity_per_trip", limit: 4
    t.text     "notes",                      limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "truck_capacities", ["truck_id"], name: "index_truck_capacities_on_truck_id", using: :btree

  create_table "trucks", force: :cascade do |t|
    t.float    "materials_capacity_kg", limit: 24
    t.integer  "mileage",               limit: 4
    t.text     "notes",                 limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "line_items", "orders"
  add_foreign_key "orders", "clients"
  add_foreign_key "trips", "line_items"
  add_foreign_key "truck_capacities", "trucks"
end
