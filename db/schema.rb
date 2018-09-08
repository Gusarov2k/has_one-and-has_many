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

ActiveRecord::Schema.define(version: 20180908090230) do

  create_table "buskets", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "buskets_items", id: false, force: :cascade do |t|
    t.integer "busket_id"
    t.integer "item_id"
  end

  add_index "buskets_items", ["busket_id", "item_id"], name: "index_buskets_items_on_busket_id_and_item_id"
  add_index "buskets_items", ["item_id", "busket_id"], name: "index_buskets_items_on_item_id_and_busket_id"

  create_table "employees", force: :cascade do |t|
    t.string   "subtipe"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "salery"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.float    "weight"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "busket_id"
    t.integer  "quantity",   default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "positions", ["busket_id", "item_id"], name: "index_positions_on_busket_id_and_item_id"
  add_index "positions", ["item_id", "busket_id"], name: "index_positions_on_item_id_and_busket_id"

  create_table "programmers", force: :cascade do |t|
    t.integer "employee_id"
    t.string  "programmers_column"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
  end

  cti_create_view('Programmer')

end
