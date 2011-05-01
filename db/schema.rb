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

ActiveRecord::Schema.define(:version => 20110501073650) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "founded"
    t.string   "address"
    t.string   "phone"
    t.string   "ceo"
    t.string   "cfo"
    t.string   "president"
    t.string   "website"
    t.integer  "headcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financials", :force => true do |t|
    t.integer  "revenue"
    t.integer  "cogs"
    t.integer  "sga"
    t.integer  "other_expense"
    t.integer  "other_income"
    t.integer  "interest_income"
    t.integer  "interest_expense"
    t.integer  "current_assets"
    t.integer  "other_assets"
    t.integer  "current_liabilties"
    t.integer  "other_liabilities"
    t.integer  "common_stock"
    t.integer  "retained_earnings"
    t.integer  "cash_in_ops"
    t.integer  "cash_out_ops"
    t.integer  "cash_investing"
    t.integer  "cash_financing"
    t.text     "income_commentary"
    t.text     "balance_commentary"
    t.date     "period"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
