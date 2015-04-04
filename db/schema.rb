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

ActiveRecord::Schema.define(version: 20150403113911) do

  create_table "eq_data", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.float    "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equips", force: :cascade do |t|
    t.string   "name"
    t.float    "score"
    t.integer  "ship_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "rate"
    t.integer  "eq_datum_id"
  end

  add_index "equips", ["ship_id"], name: "index_equips_on_ship_id"

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "score"
  end

end
