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

ActiveRecord::Schema.define(version: 20160312232252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_receipts", force: :cascade do |t|
    t.integer  "number"
    t.float    "cubic_meters"
    t.float    "value_per_cubic_meter"
    t.date     "date_worked"
    t.integer  "order_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "copy_file_name"
    t.string   "copy_content_type"
    t.integer  "copy_file_size"
    t.datetime "copy_updated_at"
    t.string   "copy_url"
    t.string   "dump_site"
  end

  add_index "client_receipts", ["order_id"], name: "index_client_receipts_on_order_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "phone_number"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "order_id"
    t.float    "amount"
    t.date     "date_worked"
    t.date     "due_date"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "invoices", ["order_id"], name: "index_invoices_on_order_id", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "material_quantity_kg"
    t.integer  "dollar_amount"
    t.text     "notes"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.string   "type"
    t.boolean  "sellable"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.date     "date"
    t.integer  "note_type"
    t.integer  "owner_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "order_date"
    t.string   "payment_terms"
    t.string   "payment_method"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "worksite"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.integer  "invoice_id"
    t.date     "date"
    t.float    "amount"
    t.string   "payment_type"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "payments", ["invoice_id"], name: "index_payments_on_invoice_id", using: :btree

  create_table "pickup_sites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "distance_km"
    t.integer  "line_item_id"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "trips", ["line_item_id"], name: "index_trips_on_line_item_id", using: :btree

  create_table "truck_capacities", force: :cascade do |t|
    t.integer  "truck_id"
    t.integer  "material_quantity_per_trip"
    t.text     "notes"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "truck_capacities", ["truck_id"], name: "index_truck_capacities_on_truck_id", using: :btree

  create_table "trucks", force: :cascade do |t|
    t.float    "materials_capacity_kg"
    t.integer  "mileage"
    t.text     "notes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "notes"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "client_receipts", "orders"
  add_foreign_key "line_items", "orders"
  add_foreign_key "orders", "clients"
  add_foreign_key "trips", "line_items"
  add_foreign_key "truck_capacities", "trucks"
end
