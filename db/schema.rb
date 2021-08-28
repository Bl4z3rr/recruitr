# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_28_102147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.string "development_type", null: false
    t.string "seniority_level", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "position_id"
    t.bigint "recruiter_id"
    t.index ["position_id"], name: "index_candidates_on_position_id"
    t.index ["recruiter_id"], name: "index_candidates_on_recruiter_id"
  end

  create_table "candidates_positions", id: false, force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "position_id", null: false
    t.index ["candidate_id"], name: "index_candidates_positions_on_candidate_id"
    t.index ["position_id"], name: "index_candidates_positions_on_position_id"
  end

  create_table "candidates_recruiters", id: false, force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "recruiter_id", null: false
    t.index ["candidate_id"], name: "index_candidates_recruiters_on_candidate_id"
    t.index ["recruiter_id"], name: "index_candidates_recruiters_on_recruiter_id"
  end

  create_table "hr_representatives", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "development_type", null: false
    t.string "seniority_level", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.string "development_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skill_sets", force: :cascade do |t|
    t.bigint "position_id"
    t.bigint "candidate_id"
    t.bigint "recruiter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_skill_sets_on_candidate_id"
    t.index ["position_id"], name: "index_skill_sets_on_position_id"
    t.index ["recruiter_id"], name: "index_skill_sets_on_recruiter_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "skill_set_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skill_set_id"], name: "index_skills_on_skill_set_id"
  end

  add_foreign_key "candidates", "positions"
  add_foreign_key "candidates", "recruiters"
  add_foreign_key "skill_sets", "candidates"
  add_foreign_key "skill_sets", "positions"
  add_foreign_key "skill_sets", "recruiters"
  add_foreign_key "skills", "skill_sets"
end
