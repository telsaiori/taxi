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

ActiveRecord::Schema.define(version: 20160819080629) do

  create_table "cars", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name"
    t.boolean  "is_default", default: false, null: false
    t.integer  "position"
    t.index ["is_default"], name: "index_cars_on_is_default"
    t.index ["position"], name: "index_cars_on_position"
  end

  create_table "equiments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "is_default", default: false, null: false
    t.index ["is_default"], name: "index_equiments_on_is_default"
  end

  create_table "for_airports", force: :cascade do |t|
    t.string   "location"
    t.boolean  "is_default", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["is_default"], name: "index_for_airports_on_is_default"
  end

  create_table "for_high_rails", force: :cascade do |t|
    t.string   "location"
    t.boolean  "is_default", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["is_default"], name: "index_for_high_rails_on_is_default"
  end

  create_table "for_travels", force: :cascade do |t|
    t.string   "location"
    t.boolean  "is_default", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["is_default"], name: "index_for_travels_on_is_default"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "is_default", default: false, null: false
  end

  create_table "profile_cars", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_equiments", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "equiment_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profile_for_airports", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "for_airport_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "profile_for_high_rails", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "for_hr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_for_travels", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "for_travel_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profile_languages", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "car_age"
    t.integer  "capacity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "insurance"
    t.integer  "half_day_time"
    t.integer  "half_day_price"
    t.string   "over_work_time1"
    t.string   "over_work_time2"
    t.integer  "over_work_price"
    t.integer  "full_day_time"
    t.integer  "full_day_price"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.string   "id_no"
    t.string   "address"
    t.integer  "tel"
    t.string   "gender"
    t.integer  "credit_card_no"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
