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

ActiveRecord::Schema.define(version: 20141224031703) do

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "ploy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ploys", force: true do |t|
    t.date     "date"
    t.integer  "num_of_people"
    t.integer  "desired_num_of_people"
    t.string   "mostly_or_all"
    t.string   "desired_mostly_or_all"
    t.integer  "min_age"
    t.integer  "max_age"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "activity"
    t.string   "place_type"
    t.string   "city_part"
    t.string   "preferred_place"
    t.integer  "user_id"
    t.integer  "wave_id"
    t.integer  "agree_ids"
    t.string   "agrees"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waves", force: true do |t|
    t.date     "date"
    t.string   "city"
    t.string   "state"
    t.boolean  "permission_to_share"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
