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

ActiveRecord::Schema.define(:version => 20120310114827) do

  create_table "Community", :id => false, :force => true do |t|
    t.string "display",              :limit => 10, :null => false
    t.string "first_name",           :limit => 20, :null => false
    t.string "last_name",            :limit => 20, :null => false
    t.string "email",                :limit => 30, :null => false
    t.string "confirm_email",        :limit => 30, :null => false
    t.string "country",              :limit => 20, :null => false
    t.string "house_name or number", :limit => 50, :null => false
    t.string "postcode",             :limit => 10, :null => false
  end

  create_table "accounts", :primary_key => "username", :force => true do |t|
    t.string "password", :limit => 20, :null => false
  end

  create_table "addresses", :primary_key => "addressID", :force => true do |t|
    t.string  "address",       :limit => 30, :null => false
    t.string  "city",          :limit => 40
    t.string  "postcode",      :limit => 9,  :null => false
    t.integer "mobile_number",               :null => false
    t.integer "phone_number",                :null => false
    t.string  "email",         :limit => 30
  end

  create_table "customers", :primary_key => "reference_number", :force => true do |t|
    t.string  "first_name", :limit => 30, :null => false
    t.string  "last_name",  :limit => 30, :null => false
    t.integer "address",                  :null => false
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.string   "ip"
    t.datetime "created_at"
  end

  create_table "offers", :force => true do |t|
    t.string  "type",        :limit => 0,   :null => false
    t.string  "description", :limit => 200, :null => false
    t.date    "start_date",                 :null => false
    t.date    "end_date",                   :null => false
    t.integer "value"
  end

  create_table "offices", :force => true do |t|
    t.string "name",     :limit => 30, :null => false
    t.text   "address",                :null => false
    t.string "postcode", :limit => 8,  :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer "customer_id",                  :null => false
    t.date    "dateOfOrder",                  :null => false
    t.string  "orderProducts", :limit => 100, :null => false
    t.string  "status",        :limit => 0,   :null => false
    t.float   "value",                        :null => false
  end

  create_table "product_offers", :id => false, :force => true do |t|
    t.integer "prod_id",  :null => false
    t.integer "offer_id", :null => false
  end

  add_index "product_offers", ["prod_id", "offer_id"], :name => "prod_id"

  create_table "reviews", :id => false, :force => true do |t|
    t.string  "product_name", :limit => 25,  :null => false
    t.string  "description",  :limit => 300, :null => false
    t.integer "rating",       :limit => 1,   :null => false
    t.date    "date",                        :null => false
    t.integer "user_id",                     :null => false
  end

  add_index "reviews", ["product_name", "user_id"], :name => "prod_id"

  create_table "staff", :force => true do |t|
    t.string  "first_name",   :limit => 30,  :null => false
    t.string  "last_name",    :limit => 30,  :null => false
    t.integer "address",                     :null => false
    t.string  "username",     :limit => 50,  :null => false
    t.string  "password",     :limit => 100, :null => false
    t.integer "office_id",                   :null => false
    t.string  "access_level", :limit => 0,   :null => false
  end

  create_table "stock", :force => true do |t|
    t.string  "name",              :limit => 30,                             :null => false
    t.float   "salesPrice",        :limit => 6,                              :null => false
    t.float   "unitPrice",         :limit => 6,                              :null => false
    t.string  "description",       :limit => 100
    t.string  "delivery",          :limit => 0,          :default => "BOTH", :null => false
    t.string  "platform",          :limit => 0,                              :null => false
    t.integer "stockLevel"
    t.integer "reorderLevel"
    t.integer "noOfDownloads"
    t.integer "total_sales",                                                 :null => false
    t.binary  "image",             :limit => 2147483647
    t.integer "sales_since_audit",                                           :null => false
    t.integer "stock_category_id",                                           :null => false
    t.integer "featured",                                :default => 0,      :null => false
  end

  create_table "stock_categories", :force => true do |t|
    t.string "title", :null => false
  end

  create_table "web_administrators", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "web_administrators", ["email"], :name => "index_web_administrators_on_email", :unique => true
  add_index "web_administrators", ["reset_password_token"], :name => "index_web_administrators_on_reset_password_token", :unique => true

  create_table "wholesalers", :id => false, :force => true do |t|
    t.integer "wholesalerID",                 :null => false
    t.string  "name",           :limit => 20, :null => false
    t.integer "address",                      :null => false
    t.integer "contactNumber",                :null => false
    t.string  "email",          :limit => 30, :null => false
    t.string  "website",        :limit => 30
    t.string  "wholesalerType", :limit => 20, :null => false
  end

  add_index "wholesalers", ["wholesalerID"], :name => "number"

end
