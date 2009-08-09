# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090809142724) do

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statistics", :force => true do |t|
    t.integer  "player_id"
    t.integer  "rank"
    t.float    "kd"
    t.integer  "exp"
    t.integer  "gp"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "headshots"
    t.integer  "matches"
    t.integer  "matches_won"
    t.integer  "matches_lost"
    t.integer  "matches_forfeited"
    t.float    "kills_per_match"
    t.float    "deaths_per_match"
    t.integer  "kill_streak"
    t.integer  "multi_kills"
    t.integer  "ultra_kills"
    t.integer  "fantastic"
    t.integer  "unbelievable"
    t.integer  "unbelievable_plus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
