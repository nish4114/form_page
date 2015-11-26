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

ActiveRecord::Schema.define(version: 20151125184523) do

  create_table "forms", force: :cascade do |t|
    t.string   "first_name",           limit: 255
    t.string   "last_name",            limit: 255
    t.string   "email",                limit: 255
    t.string   "gender",               limit: 255
    t.string   "age",                  limit: 255
    t.string   "work_experience",      limit: 255
    t.string   "highest_degree",       limit: 255
    t.string   "address",              limit: 255
    t.string   "city",                 limit: 255
    t.string   "state",                limit: 255
    t.string   "country",              limit: 255
    t.string   "pincode",              limit: 255
    t.date     "birth_date"
    t.string   "type_job",             limit: 255
    t.string   "looking_job",          limit: 255
    t.string   "week_availability",    limit: 255
    t.string   "weekend_availability", limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
