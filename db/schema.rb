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

ActiveRecord::Schema.define(version: 20151105210224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "media_type"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "profession"
    t.string   "website"
    t.boolean  "has_coach"
    t.string   "coach_name"
    t.string   "twitter_handle"
    t.boolean  "has_spouse"
    t.boolean  "has_children"
    t.integer  "num_of_children"
    t.boolean  "is_qualified"
    t.string   "q_standard"
    t.string   "marathon_pr"
    t.string   "first_marathon_time"
    t.integer  "avg_job_hrs"
    t.text     "bio"
    t.integer  "peak_mileage_wkly"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "img_url"
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "article_id"
    t.string   "tag_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_type"
    t.integer  "session_id"
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
