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

ActiveRecord::Schema[7.0].define(version: 2022_10_21_103706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catergories", force: :cascade do |t|
    t.string "name", null: false
    t.string "icon"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_catergories_on_user_id"
  end

  create_table "catergories_spendings", id: false, force: :cascade do |t|
    t.bigint "catergory_id", null: false
    t.bigint "spending_id", null: false
    t.index ["catergory_id", "spending_id"], name: "index_catergories_spendings_on_catergory_id_and_spending_id"
  end

  create_table "spendings", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "catergories", "users"
end