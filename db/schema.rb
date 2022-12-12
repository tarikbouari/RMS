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

ActiveRecord::Schema[7.0].define(version: 2022_12_11_234541) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "menu_id", null: false
    t.index ["menu_id"], name: "index_food_items_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.bigint "food_item_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["food_item_id"], name: "index_orders_on_food_item_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "reservation_time"
    t.integer "number_of_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "table_id", null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_reservations_on_order_id"
    t.index ["table_id"], name: "index_reservations_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string "status"
    t.integer "max_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_items", "menus"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "food_items"
  add_foreign_key "reservations", "orders"
  add_foreign_key "reservations", "tables"
end
