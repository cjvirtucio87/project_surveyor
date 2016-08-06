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

ActiveRecord::Schema.define(version: 20160805235946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mcqs", force: :cascade do |t|
    t.boolean  "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "number_ranges", force: :cascade do |t|
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "options_mcqs", force: :cascade do |t|
    t.integer  "options_id"
    t.integer  "mcqs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mcqs_id"], name: "index_options_mcqs_on_mcqs_id", using: :btree
    t.index ["options_id"], name: "index_options_mcqs_on_options_id", using: :btree
  end

  create_table "survey_mcqs", force: :cascade do |t|
    t.integer  "surveys_id"
    t.integer  "mcqs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mcqs_id"], name: "index_survey_mcqs_on_mcqs_id", using: :btree
    t.index ["surveys_id"], name: "index_survey_mcqs_on_surveys_id", using: :btree
  end

  create_table "survey_number_ranges", force: :cascade do |t|
    t.integer  "surveys_id"
    t.integer  "number_range_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["number_range_id"], name: "index_survey_number_ranges_on_number_range_id", using: :btree
    t.index ["surveys_id"], name: "index_survey_number_ranges_on_surveys_id", using: :btree
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "options_mcqs", "mcqs", column: "mcqs_id"
  add_foreign_key "options_mcqs", "options", column: "options_id"
  add_foreign_key "survey_mcqs", "mcqs", column: "mcqs_id"
  add_foreign_key "survey_mcqs", "surveys", column: "surveys_id"
  add_foreign_key "survey_number_ranges", "number_ranges"
  add_foreign_key "survey_number_ranges", "surveys", column: "surveys_id"
end
