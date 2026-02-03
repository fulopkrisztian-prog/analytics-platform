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

ActiveRecord::Schema[7.1].define(version: 2026_02_03_194248) do
  create_table "financial_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.decimal "amount", precision: 10
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_allocation_id", null: false
    t.index ["project_allocation_id"], name: "index_financial_records_on_project_allocation_id"
    t.index ["project_id"], name: "index_financial_records_on_project_id"
  end

  create_table "project_allocations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "worker_id", null: false
    t.bigint "resource_id", null: false
    t.bigint "user_id", null: false
    t.decimal "hours_worked", precision: 10
    t.integer "quantity"
    t.date "allocation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_allocations_on_project_id"
    t.index ["resource_id"], name: "index_project_allocations_on_resource_id"
    t.index ["user_id"], name: "index_project_allocations_on_user_id"
    t.index ["worker_id"], name: "index_project_allocations_on_worker_id"
  end

  create_table "projects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "budget", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "resources", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.decimal "unit_price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "financial_records", "project_allocations"
  add_foreign_key "financial_records", "projects"
  add_foreign_key "project_allocations", "projects"
  add_foreign_key "project_allocations", "resources"
  add_foreign_key "project_allocations", "users"
  add_foreign_key "project_allocations", "workers"
  add_foreign_key "projects", "users"
end
