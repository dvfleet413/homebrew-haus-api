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

ActiveRecord::Schema.define(version: 2020_06_05_184512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_favorites_on_recipe_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "grain_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "grain_id", null: false
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grain_id"], name: "index_grain_ingredients_on_grain_id"
    t.index ["recipe_id"], name: "index_grain_ingredients_on_recipe_id"
  end

  create_table "grains", force: :cascade do |t|
    t.string "name"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "lovibond"
    t.decimal "gravity"
    t.index ["recipe_id"], name: "index_grains_on_recipe_id"
  end

  create_table "hop_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "hop_id", null: false
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hop_id"], name: "index_hop_ingredients_on_hop_id"
    t.index ["recipe_id"], name: "index_hop_ingredients_on_recipe_id"
  end

  create_table "hops", force: :cascade do |t|
    t.string "name"
    t.string "hop_type"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_hops_on_recipe_id"
  end

  create_table "malt_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "malt_id", null: false
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["malt_id"], name: "index_malt_ingredients_on_malt_id"
    t.index ["recipe_id"], name: "index_malt_ingredients_on_recipe_id"
  end

  create_table "malts", force: :cascade do |t|
    t.string "name"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "lovibond"
    t.decimal "gravity"
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

  create_table "yeast_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "yeast_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_yeast_ingredients_on_recipe_id"
    t.index ["yeast_id"], name: "index_yeast_ingredients_on_yeast_id"
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "name"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_yeasts_on_recipe_id"
  end

  add_foreign_key "favorites", "recipes"
  add_foreign_key "favorites", "users"
  add_foreign_key "grain_ingredients", "grains"
  add_foreign_key "grain_ingredients", "recipes"
  add_foreign_key "grains", "recipes"
  add_foreign_key "hop_ingredients", "hops"
  add_foreign_key "hop_ingredients", "recipes"
  add_foreign_key "hops", "recipes"
  add_foreign_key "malt_ingredients", "malts"
  add_foreign_key "malt_ingredients", "recipes"
  add_foreign_key "malts", "recipes"
  add_foreign_key "yeast_ingredients", "recipes"
  add_foreign_key "yeast_ingredients", "yeasts"
  add_foreign_key "yeasts", "recipes"
end
