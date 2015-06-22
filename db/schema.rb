# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150621162944) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["game_id"], name: "index_attendances_on_game_id"
  add_index "attendances", ["player_id"], name: "index_attendances_on_player_id"

  create_table "game_locations", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "location",   null: false
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "game_location_id"
    t.integer  "team_id"
    t.integer  "opponent_id"
    t.datetime "game_date"
    t.string   "note"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "games", ["game_location_id"], name: "index_games_on_game_location_id"
  add_index "games", ["opponent_id"], name: "index_games_on_opponent_id"
  add_index "games", ["team_id"], name: "index_games_on_team_id"

  create_table "opponents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.string   "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rosters", ["player_id"], name: "index_rosters_on_player_id"
  add_index "rosters", ["team_id"], name: "index_rosters_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "sport",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
