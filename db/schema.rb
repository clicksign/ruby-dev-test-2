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

ActiveRecord::Schema[7.0].define(version: 2022_06_06_223238) do
  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "player_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["player_id"], name: "index_albums_on_player_id"
  end

  create_table "player_albums", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_player_albums_on_album_id"
    t.index ["player_id", "album_id"], name: "index_player_albums_on_player_id_and_album_id", unique: true
    t.index ["player_id"], name: "index_player_albums_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_players_on_name", unique: true
  end

  add_foreign_key "albums", "players"
  add_foreign_key "player_albums", "albums"
  add_foreign_key "player_albums", "players"
end
