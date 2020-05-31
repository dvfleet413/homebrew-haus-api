# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_30_212429) do

  create_table "grains", force: :cascade do |t|
    t.string "name"
    t.float "weight"
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_grains_on_recipe_id"
  end

  create_table "hops", force: :cascade do |t|
    t.string "name"
    t.string "hop_type"
    t.float "weight"
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_hops_on_recipe_id"
  end

  create_table "malts", force: :cascade do |t|
    t.string "name"
    t.float "weight"
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_malts_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.string "summary"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "name"
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_yeasts_on_recipe_id"
  end

  add_foreign_key "grains", "recipes"
  add_foreign_key "hops", "recipes"
  add_foreign_key "malts", "recipes"
  add_foreign_key "yeasts", "recipes"
end
