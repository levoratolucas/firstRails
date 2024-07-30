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

ActiveRecord::Schema[7.1].define(version: 2024_07_30_170124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipe_composer_items", force: :cascade do |t|
    t.bigint "equipe_composer_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipe_composer_id"], name: "index_equipe_composer_items_on_equipe_composer_id"
    t.index ["user_id"], name: "index_equipe_composer_items_on_user_id"
  end

  create_table "equipe_composers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kit_composer_produtos", force: :cascade do |t|
    t.bigint "kit_composer_id", null: false
    t.bigint "produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_composer_id"], name: "index_kit_composer_produtos_on_kit_composer_id"
    t.index ["produto_id"], name: "index_kit_composer_produtos_on_produto_id"
  end

  create_table "kit_composers", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.decimal "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "descricao"
    t.integer "fornecedor"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "documentValue"
    t.date "nasc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "store_id"
    t.index ["store_id"], name: "index_users_on_store_id"
  end

  add_foreign_key "equipe_composer_items", "equipe_composers"
  add_foreign_key "equipe_composer_items", "users"
  add_foreign_key "kit_composer_produtos", "kit_composers"
  add_foreign_key "kit_composer_produtos", "produtos"
  add_foreign_key "users", "stores"
end
