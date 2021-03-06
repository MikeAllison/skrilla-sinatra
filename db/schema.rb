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

ActiveRecord::Schema.define(version: 20200227205933) do

  create_table "accounts", force: :cascade do |t|
    t.string  "name"
    t.string  "url_safe_name"
    t.decimal "starting_balance", precision: 10, scale: 2, default: 0.0
  end

  create_table "bill_occurrences", force: :cascade do |t|
    t.date    "date"
    t.decimal "amount",  precision: 10, scale: 2
    t.boolean "credit"
    t.integer "bill_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string  "description"
    t.integer "merchant_id"
    t.string  "frequency"
    t.date    "starting_date"
    t.date    "ending_date"
    t.decimal "amount",        precision: 10, scale: 2
    t.boolean "credit"
    t.integer "account_id"
    t.integer "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "url_safe_name"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.string "url_safe_name"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "merchant_id"
    t.date    "date"
    t.decimal "amount",      precision: 10, scale: 2
    t.boolean "credit"
    t.integer "account_id"
    t.integer "category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "persistence_digest"
  end

end
