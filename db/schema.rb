# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_01_095021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplane_reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "location"
    t.string "destination"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "airplane_id", null: false
    t.bigint "user_id", null: false
    t.index ["airplane_id"], name: "index_airplane_reservations_on_airplane_id"
    t.index ["user_id"], name: "index_airplane_reservations_on_user_id"
  end

  create_table "airplanes", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.integer "seat"
    t.string "size"
    t.string "image"
    t.integer "cabin"
    t.integer "crew"
    t.integer "baggage"
    t.integer "capacity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "location"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.index ["car_id"], name: "index_car_reservations_on_car_id"
    t.index ["user_id"], name: "index_car_reservations_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devise_api_tokens", force: :cascade do |t|
    t.string "resource_owner_type", null: false
    t.bigint "resource_owner_id", null: false
    t.string "access_token", null: false
    t.string "refresh_token"
    t.integer "expires_in", null: false
    t.datetime "revoked_at"
    t.string "previous_refresh_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_devise_api_tokens_on_access_token"
    t.index ["previous_refresh_token"], name: "index_devise_api_tokens_on_previous_refresh_token"
    t.index ["refresh_token"], name: "index_devise_api_tokens_on_refresh_token"
    t.index ["resource_owner_type", "resource_owner_id"], name: "index_devise_api_tokens_on_resource_owner"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "airplane_reservations", "airplanes"
  add_foreign_key "airplane_reservations", "users"
  add_foreign_key "car_reservations", "cars"
  add_foreign_key "car_reservations", "users"
end
