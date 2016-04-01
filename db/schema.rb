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

ActiveRecord::Schema.define(version: 20160401233223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emergency_infos", force: :cascade do |t|
    t.integer  "trainee_id"
    t.integer  "retreat_application_id"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "emergency_contact_relationship"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "financial_infos", force: :cascade do |t|
    t.integer  "trainee_id"
    t.integer  "retreat_application_id"
    t.boolean  "need_aid"
    t.float    "amt_aid_needed"
    t.boolean  "deposit_received"
    t.float    "total_payment_received"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "housing_infos", force: :cascade do |t|
    t.integer  "trainee_id"
    t.integer  "retreat_application_id"
    t.boolean  "need_housing"
    t.boolean  "camping"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medical_infos", force: :cascade do |t|
    t.integer  "trainee_id"
    t.boolean  "special_medical_needs"
    t.string   "medical_needs_note"
    t.boolean  "serious_allergies"
    t.string   "allergies_note"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "personal_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "retreat_application_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "retreat_applications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sesshin_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sesshins", force: :cascade do |t|
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainees", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sesshin_id"
    t.boolean  "fulltime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
