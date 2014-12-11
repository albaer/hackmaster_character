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

ActiveRecord::Schema.define(version: 20141211003539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ability_scores", force: true do |t|
    t.integer  "character_id"
    t.integer  "ability_id"
    t.integer  "level_score"
    t.integer  "experience_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_class_associations", force: true do |t|
    t.integer  "character_id"
    t.integer  "character_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_classes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_race_associations", force: true do |t|
    t.integer  "character_id"
    t.integer  "race_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "height"
    t.integer  "bmi"
    t.integer  "weight"
    t.string   "handed"
    t.integer  "building_points"
    t.integer  "honor"
    t.integer  "fame"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
