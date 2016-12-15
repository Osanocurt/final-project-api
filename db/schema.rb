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

ActiveRecord::Schema.define(version: 20161215104623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "runner_id"
    t.float    "rating"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "request_id"
    t.index ["request_id"], name: "index_feedbacks_on_request_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "runner_id"
    t.string   "location_lat"
    t.string   "destination_lat"
    t.float    "value"
    t.string   "image"
    t.string   "item_description"
    t.string   "earliest_pickup"
    t.string   "latest_pickup"
    t.string   "earliest_delivery"
    t.string   "latest_delivery"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "location_lng"
    t.string   "destination_lng"
    t.boolean  "job_accepted"
    t.boolean  "delivered"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "full_name"
    t.string   "address"
    t.string   "user_type"
    t.string   "photo"
  end

  add_foreign_key "feedbacks", "requests"
end
