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

ActiveRecord::Schema.define(version: 20141209044804) do

  create_table "companies", force: true do |t|
    t.string   "name",       null: false
    t.string   "industry",   null: false
    t.string   "size",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["industry"], name: "index_companies_on_industry"

  create_table "company_students", force: true do |t|
    t.integer  "company_id", null: false
    t.integer  "student_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_students", ["company_id"], name: "index_company_students_on_company_id"
  add_index "company_students", ["student_id"], name: "index_company_students_on_student_id"

  create_table "recruiters", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.integer  "company_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "weixin"
    t.string   "weibo"
    t.string   "university",      null: false
    t.string   "grade"
    t.string   "majors"
    t.string   "phone_number"
    t.text     "interests"
    t.text     "about"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["grade"], name: "index_students_on_grade"
  add_index "students", ["majors"], name: "index_students_on_majors"
  add_index "students", ["university"], name: "index_students_on_university"

end
