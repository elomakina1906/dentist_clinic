# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_25_135207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.time "time"
    t.bigint "user_id", null: false
    t.bigint "doctor_id", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
  end

  create_table "doctors_specialities", id: false, force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "speciality_id", null: false
    t.index ["doctor_id"], name: "index_doctors_specialities_on_doctor_id"
    t.index ["speciality_id"], name: "index_doctors_specialities_on_speciality_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "doctor_id", null: false
    t.bigint "user_id", null: false
    t.index ["doctor_id"], name: "index_reviews_on_doctor_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "email"
    t.string "phone_number"
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "users"
  add_foreign_key "reviews", "doctors"
  add_foreign_key "reviews", "users"
end
