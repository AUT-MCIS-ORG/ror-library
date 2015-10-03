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

ActiveRecord::Schema.define(version: 20151003040523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evidences", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "se_method"
    t.string   "se_methodology"
    t.string   "benefit"
    t.string   "result"
    t.string   "participants"
    t.string   "metric"
    t.string   "context"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "source_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_searches", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "search_name"
    t.string   "search_values"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "search_fields", force: :cascade do |t|
    t.string   "fieldID"
    t.string   "fieldName"
    t.string   "fieldType"
    t.string   "optionalValues"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "title"
    t.string   "authors"
    t.text     "abstract"
    t.string   "publisher"
    t.string   "publish_date"
    t.string   "keywords"
    t.string   "doi"
    t.integer  "page_start"
    t.integer  "page_end"
    t.integer  "volume"
    t.integer  "issue"
    t.integer  "avg_rating"
    t.string   "source_status"
    t.string   "research_questions"
    t.string   "research_methods"
    t.integer  "submitter_id"
    t.integer  "moderator_id"
    t.integer  "analyst_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "ticks", id: false, force: :cascade do |t|
    t.datetime "tick"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
