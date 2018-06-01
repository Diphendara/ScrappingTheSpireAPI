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

ActiveRecord::Schema.define(version: 2018_05_18_105840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "image"
    t.string "energyCost"
    t.string "name"
    t.integer "category"
    t.integer "deck"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards_keywords", force: :cascade do |t|
    t.integer "card_id"
    t.integer "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.text "image"
    t.string "name"
    t.integer "hp"
    t.integer "gold"
    t.integer "relic_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enemies", force: :cascade do |t|
    t.integer "minHP"
    t.integer "maxHP"
    t.string "appearance"
    t.boolean "isElite"
    t.boolean "isBoss"
    t.integer "act_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.integer "act_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyword_potions", force: :cascade do |t|
    t.integer "potion_id"
    t.integer "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyword_relics", force: :cascade do |t|
    t.integer "relic_id"
    t.integer "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "potions", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.text "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relics", force: :cascade do |t|
    t.text "image"
    t.string "name"
    t.integer "rarity"
    t.text "description"
    t.text "lore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
