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

ActiveRecord::Schema.define(version: 20141028102546) do

  create_table "experiences", force: true do |t|
    t.string   "title"
    t.string   "place"
    t.datetime "date"
    t.text     "notes"
  end

  create_table "skills", force: true do |t|
    t.integer "experience_id"
    t.integer "tag_id"
  end

  add_index "skills", ["experience_id"], name: "index_skills_on_experience_id"
  add_index "skills", ["tag_id"], name: "index_skills_on_tag_id"

  create_table "tags", force: true do |t|
    t.string "label"
  end

  add_index "tags", ["label"], name: "index_tags_on_label", unique: true

  create_table "trainings", force: true do |t|
    t.string   "title"
    t.string   "place"
    t.datetime "start_date"
    t.datetime "end_date"
  end

end
