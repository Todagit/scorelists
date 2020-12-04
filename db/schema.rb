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

ActiveRecord::Schema.define(version: 2020_12_04_230738) do

  create_table "scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.string "title1", null: false
    t.integer "score1", null: false
    t.string "title2"
    t.integer "score2"
    t.string "title3"
    t.integer "score3"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "study_scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.string "test_name"
    t.date "test_date"
    t.integer "japanese"
    t.integer "math1a"
    t.integer "math2b"
    t.integer "worldhistory"
    t.integer "japanesehistory"
    t.integer "modernsociety"
    t.integer "geography"
    t.integer "chemistry"
    t.integer "physics"
    t.integer "english_l"
    t.integer "english_r"
    t.index ["user_id"], name: "index_study_scores_on_user_id"
  end

  create_table "toeic_scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "test_date"
    t.integer "test_number"
    t.integer "listening_score"
    t.integer "reading_score"
    t.integer "total_score"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "scores", "users"
  add_foreign_key "study_scores", "users"
end
