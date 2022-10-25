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

ActiveRecord::Schema.define(version: 2022_10_23_213626) do

  create_table "budgets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_income"
    t.integer "balances"
    t.integer "expenses_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_expenses", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "home_expenses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "mortgage_rent"
    t.integer "electric"
    t.integer "gas"
    t.integer "water_sewer_trash"
    t.integer "internet_cable"
    t.integer "home_supplies"
    t.integer "home_repairs"
    t.integer "total_home_expenses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "income_input1"
    t.integer "income_input2"
    t.integer "total_income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "living_expenses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "clothing"
    t.integer "cell_phone"
    t.integer "hair_personal_care"
    t.integer "child_care"
    t.integer "total_living_expenses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transport_expenses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gas"
    t.integer "tolls_fares"
    t.integer "auto_repairs"
    t.integer "total_transport_expenses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
  end

end
