# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_03_224153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "headers", force: :cascade do |t|
    t.string "title"
    t.string "personal_website"
    t.string "git_hub"
    t.string "linked_in"
    t.string "email"
    t.string "phone_number"
    t.string "mission_statement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_headers_on_user_id"
  end

  create_table "technical_projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "deployed_app"
    t.string "git_hub"
    t.string "video"
    t.string "detailed_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_technical_projects_on_user_id"
  end

  create_table "technical_skills", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_technical_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "job_title"
    t.string "date"
    t.string "location"
    t.string "description"
    t.string "detailed_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_work_experiences_on_user_id"
  end

  add_foreign_key "educations", "users"
  add_foreign_key "headers", "users"
  add_foreign_key "technical_projects", "users"
  add_foreign_key "technical_skills", "users"
  add_foreign_key "work_experiences", "users"
end
