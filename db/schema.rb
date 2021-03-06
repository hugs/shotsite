# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100828222357) do

  create_table "jobs", :force => true do |t|
    t.string   "browsers"
    t.string   "urls"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "batch"
    t.integer  "interval"
  end

  create_table "order_transactions", :force => true do |t|
    t.integer  "order_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "sucess"
    t.string   "authroization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
    t.integer  "shots"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.string   "ip_address"
    t.integer  "user_id"
    t.string   "express_token"
    t.string   "express_payer_id"
  end

  create_table "screenshots", :force => true do |t|
    t.string   "browser"
    t.string   "url"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shots"
  end

end
