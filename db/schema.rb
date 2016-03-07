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

ActiveRecord::Schema.define(version: 20160306225629) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
  end

  add_index "courses_students", ["course_id"], name: "index_courses_students_on_course_id"
  add_index "courses_students", ["student_id"], name: "index_courses_students_on_student_id"

  create_table "courses_teachers", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "teacher_id"
  end

  add_index "courses_teachers", ["course_id"], name: "index_courses_teachers_on_course_id"
  add_index "courses_teachers", ["teacher_id"], name: "index_courses_teachers_on_teacher_id"

  create_table "feedbacks", force: :cascade do |t|
    t.string   "message"
    t.float    "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homeworks", force: :cascade do |t|
    t.string   "wording"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homeworks_students", id: false, force: :cascade do |t|
    t.integer "homework_id"
    t.integer "student_id"
  end

  add_index "homeworks_students", ["homework_id"], name: "index_homeworks_students_on_homework_id"
  add_index "homeworks_students", ["student_id"], name: "index_homeworks_students_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "ident"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "ident"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
