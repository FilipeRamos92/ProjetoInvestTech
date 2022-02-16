# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_16_125133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cash_transactions", force: :cascade do |t|
    t.date "date"
    t.string "description"
    t.float "value"
    t.bigint "fund_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_id"], name: "index_cash_transactions_on_fund_id"
  end

  create_table "funds", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.date "creation_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "securities", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "type"
    t.string "isin"
    t.string "symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "security_transactions", force: :cascade do |t|
    t.date "date"
    t.string "name"
    t.float "value"
    t.integer "quantity"
    t.bigint "security_id", null: false
    t.bigint "fund_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_id"], name: "index_security_transactions_on_fund_id"
    t.index ["security_id"], name: "index_security_transactions_on_security_id"
  end

  add_foreign_key "cash_transactions", "funds"
  add_foreign_key "security_transactions", "funds"
  add_foreign_key "security_transactions", "securities"
end
