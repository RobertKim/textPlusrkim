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

ActiveRecord::Schema.define(version: 20131023110257) do

  create_table "show_calls", force: true do |t|
    t.string   "uuid"
    t.text     "direction"
    t.datetime "created"
    t.integer  "created_epoch"
    t.string   "name"
    t.string   "state"
    t.string   "cid_name"
    t.string   "cid_num"
    t.string   "ip_addr"
    t.string   "dest"
    t.string   "presence_id"
    t.string   "presence_data"
    t.text     "callstate"
    t.text     "callee_name"
    t.string   "callee_num"
    t.text     "callee_direction"
    t.string   "call_uuid"
    t.string   "hostname"
    t.text     "sent_callee_name"
    t.string   "sent_callee_num"
    t.string   "b_uuid"
    t.text     "b_direction"
    t.datetime "b_created"
    t.integer  "b_created_epoch"
    t.string   "b_name"
    t.string   "b_state"
    t.string   "b_cid_name"
    t.string   "b_cid_num"
    t.string   "b_ip_addr"
    t.string   "b_dest"
    t.string   "b_presence_id"
    t.string   "b_presence_data"
    t.text     "b_callstate"
    t.text     "b_callee_name"
    t.string   "b_callee_num"
    t.text     "b_callee_direction"
    t.string   "b_sent_callee_name"
    t.string   "b_sent_callee_num"
    t.integer  "call_created_epoch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
