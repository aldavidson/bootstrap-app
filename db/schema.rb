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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130824104434) do

  create_table "accounts", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "created_by_user_id"
    t.string   "name"
    t.string   "account_type"
  end

  add_index "accounts", ["account_type"], :name => "ix_acc_account_type"

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "town"
    t.string   "country_code"
    t.string   "telephone"
    t.string   "postcode"
    t.integer  "created_by_user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "agents", :force => true do |t|
    t.integer  "agency_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "work_telephone"
    t.string   "mobile"
    t.string   "email"
    t.integer  "created_by_user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "first_name",             :limit => 128
    t.string   "last_name",              :limit => 128
    t.string   "informal_name",          :limit => 128
    t.integer  "account_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["first_name"], :name => "ix_users_first_name"
  add_index "users", ["informal_name"], :name => "ix_users_informal_name"
  add_index "users", ["last_name"], :name => "ix_users_last_name"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
