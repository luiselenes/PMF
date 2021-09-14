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

ActiveRecord::Schema.define(version: 2021_09_10_224851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agricultural_companies", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "responsable", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.float "capacity", default: 0.0, null: false
    t.bigint "agricultural_companies_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agricultural_companies_id"], name: "index_devices_on_agricultural_companies_id"
  end

  create_table "green_houses", force: :cascade do |t|
    t.string "code_greenhouse", default: "", null: false
    t.float "area_grooves", default: 0.0, null: false
    t.bigint "agricultural_companies_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agricultural_companies_id"], name: "index_green_houses_on_agricultural_companies_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "routes", force: :cascade do |t|
    t.float "height", default: 0.0, null: false
    t.float "latitude", default: 0.0, null: false
    t.float "longitud", default: 0.0, null: false
    t.bigint "devices_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["devices_id"], name: "index_routes_on_devices_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user", null: false
    t.string "password", default: "", null: false
    t.string "role", default: "", null: false
    t.string "description", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "devices", "agricultural_companies", column: "agricultural_companies_id"
  add_foreign_key "green_houses", "agricultural_companies", column: "agricultural_companies_id"
  add_foreign_key "routes", "devices", column: "devices_id"
end
