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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121113063930) do

  create_table "day_of_weeks", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "liturgical_days", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "season_id"
    t.integer  "week_in_psalter"
    t.integer  "day_of_week_id"
    t.integer  "rank_id"
    t.string   "feast_mmdd"
    t.string   "reference"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "liturgical_hours", :force => true do |t|
    t.string   "name"
    t.integer  "liturgical_day_id"
    t.integer  "prayer_type_id"
    t.string   "intro_text"
    t.string   "intro_audio"
    t.string   "hymn_text"
    t.string   "hymn_audio"
    t.string   "ant1_front_text"
    t.string   "ant1_front_audio"
    t.string   "ant1_end_text"
    t.string   "ant1_end_audio"
    t.string   "ant2_front_text"
    t.string   "ant2_front_audio"
    t.string   "ant2_end_text"
    t.string   "ant2_end_audio"
    t.string   "ant3_front_text"
    t.string   "ant3_front_audio"
    t.string   "ant3_end_text"
    t.string   "ant3_end_audio"
    t.string   "psalm1_text"
    t.string   "psalm1_audio"
    t.string   "psalm1_prayer_text"
    t.string   "psalm1_prayer_audio"
    t.string   "psalm2_text"
    t.string   "psalm2_audio"
    t.string   "psalm2_prayer_text"
    t.string   "psalm2_prayer_audio"
    t.string   "psalm3_text"
    t.string   "psalm3_audio"
    t.string   "psalm3_prayer_text"
    t.string   "psalm3_prayer_audio"
    t.string   "veriscle_text"
    t.string   "versicle_audio"
    t.string   "reading1_text"
    t.string   "reading1_audio"
    t.string   "reading1_response_text"
    t.string   "reading1_response_audio"
    t.string   "reading2_text"
    t.string   "reading2_audio"
    t.string   "reading2_response_text"
    t.string   "reading2_response_audio"
    t.string   "ant_cant_text"
    t.string   "ant_cant_audio"
    t.string   "canticle_text"
    t.string   "canticle_audio"
    t.string   "intercessions_text"
    t.string   "intercessions_audio"
    t.string   "te_deum_text"
    t.string   "te_deum_audio"
    t.string   "lords_prayer_text"
    t.string   "lords_prayer_audio"
    t.string   "concluding_prayer_text"
    t.string   "concluding_prayer_audio"
    t.string   "outro_text"
    t.string   "outro_audio"
    t.string   "marian_ant_text"
    t.string   "marian_ant_audio"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "prayer_types", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ranks", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.boolean  "editor",          :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
