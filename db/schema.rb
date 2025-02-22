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

ActiveRecord::Schema.define(version: 2021_05_26_024331) do

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.decimal "rating"
    t.string "car"
    t.string "car_color"
    t.string "license_plate"
    t.string "car_year"
    t.string "bio"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.decimal "rating"
    t.string "email"
    t.string "cell_number"
  end

  create_table "rides", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "driver_id"
    t.decimal "price"
    t.string "pick_up"
    t.string "drop_off"
  end

end
