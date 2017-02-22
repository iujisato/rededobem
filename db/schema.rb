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

ActiveRecord::Schema.define(version: 20170222030410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_addresses", force: :cascade do |t|
    t.string "street"
    t.string "neighbourhood"
    t.string "city"
  end

  create_table "user_informations", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "date_of_birth"
    t.jsonb    "telephone"
    t.jsonb    "education_level"
    t.jsonb    "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["education_level"], name: "index_user_informations_on_education_level", using: :gin
    t.index ["status"], name: "index_user_informations_on_status", using: :gin
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_information_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["user_information_id"], name: "index_users_on_user_information_id", using: :btree
  end

  add_foreign_key "users", "user_informations"
end
