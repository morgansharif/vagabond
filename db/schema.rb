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

ActiveRecord::Schema.define(version: 20160509195944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "location"
    t.string   "duration"
    t.string   "img"
    t.string   "desc"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "itinerary_id"
  end

  add_index "activities", ["itinerary_id"], name: "index_activities_on_itinerary_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "cities", ["slug"], name: "index_cities_on_slug", using: :btree

  create_table "itineraries", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
    t.integer  "user_id"
    t.integer  "duration"
  end

  add_index "itineraries", ["city_id"], name: "index_itineraries_on_city_id", using: :btree
  add_index "itineraries", ["user_id"], name: "index_itineraries_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_city"
    t.string   "email"
    t.string   "img"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
  end

  add_foreign_key "activities", "itineraries"
  add_foreign_key "itineraries", "cities"
  add_foreign_key "itineraries", "users"
end
