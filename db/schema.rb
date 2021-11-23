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

ActiveRecord::Schema.define(version: 2021_11_23_121154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipes_id", null: false
    t.bigint "ingredients_id", null: false
    t.integer "quantity"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredients_id"], name: "index_recipe_ingredients_on_ingredients_id"
    t.index ["recipes_id"], name: "index_recipe_ingredients_on_recipes_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "cook_time"
    t.integer "servings"
    t.string "cuisine"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "saved_recipes", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "recipes_id", null: false
    t.boolean "favourite", default: false
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipes_id"], name: "index_saved_recipes_on_recipes_id"
    t.index ["users_id"], name: "index_saved_recipes_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "recipe_ingredients", "ingredients", column: "ingredients_id"
  add_foreign_key "recipe_ingredients", "recipes", column: "recipes_id"
  add_foreign_key "saved_recipes", "recipes", column: "recipes_id"
  add_foreign_key "saved_recipes", "users", column: "users_id"
end
