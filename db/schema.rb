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

ActiveRecord::Schema.define(:version => 20121112164911) do

  create_table "day_of_weeks", :force => true do |t|
    t.string   "label"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "day_of_weeks", ["label"], :name => "index_day_of_weeks_on_label", :unique => true

  create_table "ingredient_types", :force => true do |t|
    t.string   "label"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string   "label"
    t.string   "filename"
    t.string   "content"
    t.integer  "ingredient_type_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "ingredients", ["label"], :name => "index_ingredients_on_label", :unique => true

  create_table "liturgical_days", :force => true do |t|
    t.string   "label"
    t.integer  "season_id"
    t.integer  "week_in_season"
    t.integer  "week_in_psalter"
    t.integer  "day_of_week_id"
    t.integer  "prayer_type_id"
    t.integer  "rank_id"
    t.integer  "feast_month"
    t.integer  "feast_day"
    t.string   "loth_pages"
    t.string   "cp_pages"
    t.string   "description"
    t.string   "intro"
    t.string   "invite"
    t.string   "hymn"
    t.string   "ant1_front"
    t.string   "psalm1"
    t.string   "psalm1_prayer"
    t.string   "ant1_end"
    t.string   "ant2_front"
    t.string   "psalm2"
    t.string   "psalm2_prayer"
    t.string   "ant2_end"
    t.string   "ant3_front"
    t.string   "psalm3"
    t.string   "psalm3_prayer"
    t.string   "ant3_end"
    t.string   "versicle"
    t.string   "reading1"
    t.string   "reading1_response"
    t.string   "reading2"
    t.string   "reading2_response"
    t.string   "ant_cant"
    t.string   "canticle"
    t.string   "intercessions"
    t.string   "te_deum"
    t.string   "lords_prayer_invite"
    t.string   "lords_prayer"
    t.string   "concluding_prayer"
    t.string   "marian_ant"
    t.string   "outro"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "liturgical_days", ["label"], :name => "index_liturgical_days_on_label", :unique => true

  create_table "prayer_types", :force => true do |t|
    t.string   "label"
    t.string   "description"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "prayer_types", ["label"], :name => "index_prayer_types_on_label", :unique => true

  create_table "ranks", :force => true do |t|
    t.string   "label"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "ranks", ["label"], :name => "index_ranks_on_label", :unique => true

  create_table "seasons", :force => true do |t|
    t.string   "label"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "seasons", ["label"], :name => "index_seasons_on_label", :unique => true

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
