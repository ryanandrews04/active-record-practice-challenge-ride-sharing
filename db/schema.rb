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

ActiveRecord::Schema.define(version: 2021_05_04_191244) do

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
    t.string "pick_up"
    t.string "drop_off"
    t.integer "driver_id"
    t.integer "passenger_id"
    t.integer "price"
  end

end
