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

ActiveRecord::Schema[7.0].define(version: 2022_04_30_140210) do
  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "episode_tests", force: :cascade do |t|
    t.integer "episode_id", null: false
    t.integer "test_procedure_id", null: false
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_episode_tests_on_episode_id"
    t.index ["test_procedure_id"], name: "index_episode_tests_on_test_procedure_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_episodes_on_patient_id"
  end

  create_table "matter_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_procedures", force: :cascade do |t|
    t.string "name"
    t.integer "department_id", null: false
    t.integer "matter_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_test_procedures_on_department_id"
    t.index ["matter_type_id"], name: "index_test_procedures_on_matter_type_id"
  end

  add_foreign_key "episode_tests", "episodes"
  add_foreign_key "episode_tests", "test_procedures"
  add_foreign_key "episodes", "patients"
  add_foreign_key "test_procedures", "departments"
  add_foreign_key "test_procedures", "matter_types"
end
