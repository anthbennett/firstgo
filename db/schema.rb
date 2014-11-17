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

ActiveRecord::Schema.define(version: 20141117095328) do

  create_table "client_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "client_users", ["client_id"], name: "index_client_users_on_client_id"
  add_index "client_users", ["user_id"], name: "index_client_users_on_user_id"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "partner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name"
    t.string   "tfn"
    t.string   "abn"
    t.string   "address"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "entities", ["client_id"], name: "index_entities_on_client_id"

  create_table "income_summaries", force: true do |t|
    t.decimal  "trust"
    t.decimal  "individual"
    t.decimal  "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "income_summaries", ["client_id"], name: "index_income_summaries_on_client_id"

  create_table "item_types", force: true do |t|
    t.string   "name"
    t.boolean  "is_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "item_type_id"
    t.decimal  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worksheet_id"
  end

  add_index "items", ["item_type_id"], name: "index_items_on_item_type_id"
  add_index "items", ["worksheet_id"], name: "index_items_on_worksheet_id"

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "initials"
    t.string   "profile_pic"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "worksheets", force: true do |t|
    t.decimal  "interest"
    t.decimal  "rent"
    t.decimal  "account_fees"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "worksheets", ["client_id"], name: "index_worksheets_on_client_id"

end
