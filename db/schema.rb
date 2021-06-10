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

ActiveRecord::Schema.define(version: 2021_06_09_224118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city", primary_key: "city_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "city_name", null: false
    t.integer "region_id", null: false
  end


  create_table "region", primary_key: "region_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "region_name", null: false
    t.integer "country_id", null: false
  end

  create_table "tours", primary_key: "tourbase_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "tourbase_name", null: false
    t.integer "city_id", null: false
  end

  add_foreign_key "city", "region", primary_key: "region_id", name: "city_region_id_fkey"
  add_foreign_key "region", "tours", primary_key: "country_id", name: "region_country_id_fkey"
  add_foreign_key "tours", "city", primary_key: "city_id", name: "tourbase_city_id_fkey"
end
