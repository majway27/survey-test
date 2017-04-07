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

ActiveRecord::Schema.define(version: 20170405221546) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "version"
    t.string   "surveyname"
    t.integer  "question_1_key"
    t.string   "question_1_text"
    t.integer  "question_2_key"
    t.string   "question_2_text"
    t.integer  "question_3_key"
    t.string   "question_3_text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "text"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.datetime "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "tabulations", force: :cascade do |t|
    t.integer  "count"
    t.integer  "survey_id"
    t.integer  "question_id"
    t.integer  "option_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["option_id"], name: "index_tabulations_on_option_id"
    t.index ["question_id"], name: "index_tabulations_on_question_id"
    t.index ["survey_id"], name: "index_tabulations_on_survey_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "company"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
