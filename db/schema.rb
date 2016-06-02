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

ActiveRecord::Schema.define(version: 20160602134601) do

  create_table "bedding_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "booked_rooms", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "mode"
    t.string   "status"
    t.datetime "date_in"
    t.datetime "date_out"
    t.integer  "head_count"
    t.string   "comments"
  end

  create_table "entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "booking_id"
    t.datetime "check_in"
    t.datetime "check_out"
    t.string   "comments"
  end

  create_table "hosted_ats", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "occupied_room_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "occupied_rooms", force: :cascade do |t|
    t.datetime "check_in"
    t.datetime "checkout"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "room_id"
    t.integer  "reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "date_in"
    t.datetime "date_out"
    t.string   "made_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "reserved_rooms", force: :cascade do |t|
    t.integer  "number_of_rooms"
    t.string   "status"
    t.integer  "reservation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "room_id"
  end

  create_table "room_amenities", force: :cascade do |t|
    t.string   "amenities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_amenities_types", force: :cascade do |t|
    t.integer "room_type_id"
    t.integer "room_amenity_id"
  end

  create_table "room_attractions", force: :cascade do |t|
    t.string   "attraction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_attractions_types", force: :cascade do |t|
    t.integer "room_attraction_id"
    t.integer "room_type_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string   "description"
    t.integer  "max_capacity"
    t.integer  "price_per_person"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "bedding_type_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "room_number"
    t.string   "floor"
    t.string   "status"
    t.integer  "room_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
