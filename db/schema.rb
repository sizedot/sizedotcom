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

ActiveRecord::Schema.define(version: 20160803175335) do

  create_table "brandlists", force: :cascade do |t|
    t.string   "brandname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_accs", force: :cascade do |t|
    t.string   "division"
    t.string   "productname"
    t.integer  "brandlist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "category_bottoms", force: :cascade do |t|
    t.string   "division"
    t.string   "productname"
    t.integer  "brandlist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "category_tops", force: :cascade do |t|
    t.string   "division"
    t.string   "productname"
    t.integer  "brandlist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jeans_sizes", force: :cascade do |t|
    t.integer  "sizename"
    t.string   "corsize"
    t.float    "waistwidth"
    t.float    "hipwidth"
    t.float    "thighwidth"
    t.float    "raiselength"
    t.float    "hemwidth"
    t.float    "totallength"
    t.integer  "categorybottom_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "knit_sizes", force: :cascade do |t|
    t.string   "sizename"
    t.string   "corsize"
    t.float    "chestwidth"
    t.float    "shoulderwidth"
    t.float    "sleeve"
    t.float    "totallength"
    t.integer  "categorytop_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pants_sizes", force: :cascade do |t|
    t.integer  "sizename"
    t.string   "corsize"
    t.float    "waistwidth"
    t.float    "hipwidth"
    t.float    "thighwidth"
    t.float    "raiselength"
    t.float    "hemwidth"
    t.float    "totallength"
    t.integer  "categorybottom_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "shirts_sizes", force: :cascade do |t|
    t.string   "sizename"
    t.string   "corsize"
    t.float    "chestwidth"
    t.float    "shoulderwidth"
    t.float    "sleeve"
    t.float    "totallength"
    t.integer  "categorytop_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "shoes_sizes", force: :cascade do |t|
    t.string   "korsize"
    t.string   "ussize"
    t.string   "uksize"
    t.string   "eursize"
    t.string   "japsize"
    t.string   "width"
    t.integer  "categoryacc_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tshirts_sizes", force: :cascade do |t|
    t.string   "sizename"
    t.string   "corsize"
    t.float    "chestwidth"
    t.float    "shoulderwidth"
    t.float    "sleeve"
    t.float    "totallength"
    t.integer  "categorytop_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
