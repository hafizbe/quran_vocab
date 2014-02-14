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

ActiveRecord::Schema.define(version: 20140213192312) do

  create_table "card_relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "card_id"
    t.integer  "response"
    t.integer  "old_interval",                             default: 0
    t.integer  "next_interval"
    t.date     "next_date"
    t.date     "date_response"
    t.decimal  "easiness_factor", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "card_relationships", ["card_id", "user_id", "date_response"], name: "Index unique CardRelationship", unique: true, using: :btree
  add_index "card_relationships", ["card_id"], name: "index_card_relationships_on_card_id", using: :btree
  add_index "card_relationships", ["user_id"], name: "index_card_relationships_on_user_id", using: :btree

  create_table "cards", force: true do |t|
    t.string   "content_ar"
    t.integer  "package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.integer  "order"
    t.integer  "surah_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surahs", force: true do |t|
    t.string   "name_arabic"
    t.integer  "nb_packages"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traducted_cards", force: true do |t|
    t.string   "lang"
    t.string   "content"
    t.integer  "card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
