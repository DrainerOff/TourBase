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

ActiveRecord::Schema.define(version: 2021_06_14_124416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", primary_key: "city_id", id: :integer, auto_increment: true, default: nil, force: :cascade do |t|
    t.string "city_name", null: false
    t.integer "region_id", null: false
  end

  create_table "countries", primary_key: "country_id", id: :integer,  auto_increment: true, default: nil, force: :cascade do |t|
    t.string "country_name", null: false
  end

  create_table "regions", primary_key: "region_id", id: :integer,  auto_increment: true, default: nil, force: :cascade do |t|
    t.string "region_name", null: false
    t.integer "country_id", null: false
  end

  create_table "tourbases", primary_key: "tourbase_id", id: :integer,  auto_increment: true, default: nil, force: :cascade do |t|
    t.string "tourbase_name", null: false
    t.integer "city_id", null: false
  end

  add_foreign_key "cities", "regions", primary_key: "region_id", name: "cities_region_id_fkey"
  add_foreign_key "regions", "countries", primary_key: "country_id", name: "regions_country_id_fkey"
  add_foreign_key "tourbases", "cities", primary_key: "city_id", name: "tourbases_city_id_fkey"
end
