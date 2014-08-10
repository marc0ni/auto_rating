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

ActiveRecord::Schema.define(version: 20140810013444) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "agent_id"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["agent_id"], name: "index_accounts_on_agent_id"
  add_index "accounts", ["policy_id"], name: "index_accounts_on_policy_id"
  add_index "accounts", ["proposal_id"], name: "index_accounts_on_proposal_id"
  add_index "accounts", ["submission_id"], name: "index_accounts_on_submission_id"

  create_table "agents", force: true do |t|
    t.string   "contact"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "account_id"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.string   "policy"
    t.string   "references"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agents", ["account_id"], name: "index_agents_on_account_id"
  add_index "agents", ["proposal_id"], name: "index_agents_on_proposal_id"
  add_index "agents", ["submission_id"], name: "index_agents_on_submission_id"

  create_table "deductibles", force: true do |t|
    t.string   "partial"
    t.decimal  "spec_causes", precision: 8, scale: 2
    t.string   "comp"
    t.string   "coll"
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deductibles", ["risk_id"], name: "index_deductibles_on_risk_id"

  create_table "details", force: true do |t|
    t.string   "partial"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.decimal  "cost_new",       precision: 8, scale: 2
    t.string   "age_group"
    t.string   "territory"
    t.string   "size_class"
    t.string   "load_capacity"
    t.string   "fleet_nonfleet"
    t.string   "spec_causes"
    t.string   "gvw"
    t.string   "gcw"
    t.string   "business_use"
    t.string   "radius_class"
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "details", ["risk_id"], name: "index_details_on_risk_id"

  create_table "limits", force: true do |t|
    t.string   "partial"
    t.string   "bipd"
    t.string   "medical"
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "limits", ["risk_id"], name: "index_limits_on_risk_id"

  create_table "policies", force: true do |t|
    t.string   "policy_no"
    t.integer  "deductibles_id"
    t.integer  "limits_id"
    t.integer  "premia_id"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["deductibles_id"], name: "index_policies_on_deductibles_id"
  add_index "policies", ["limits_id"], name: "index_policies_on_limits_id"
  add_index "policies", ["premia_id"], name: "index_policies_on_premia_id"
  add_index "policies", ["proposal_id"], name: "index_policies_on_proposal_id"
  add_index "policies", ["submission_id"], name: "index_policies_on_submission_id"

  create_table "premia", force: true do |t|
    t.decimal  "comp_base",  precision: 8, scale: 2
    t.decimal  "coll_base",  precision: 8, scale: 2
    t.decimal  "otc_base",   precision: 8, scale: 2
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "premia", ["risk_id"], name: "index_premia_on_risk_id"

  create_table "proposals", force: true do |t|
    t.string   "proposal_no"
    t.integer  "submission_id"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposals", ["policy_id"], name: "index_proposals_on_policy_id"
  add_index "proposals", ["submission_id"], name: "index_proposals_on_submission_id"

  create_table "risks", force: true do |t|
    t.string   "risk"
    t.integer  "premium"
    t.integer  "deductible"
    t.integer  "limit"
    t.integer  "submission_id"
    t.integer  "limits_id"
    t.integer  "deductibles_id"
    t.integer  "details_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "risks", ["deductibles_id"], name: "index_risks_on_deductibles_id"
  add_index "risks", ["details_id"], name: "index_risks_on_details_id"
  add_index "risks", ["limits_id"], name: "index_risks_on_limits_id"
  add_index "risks", ["submission_id"], name: "index_risks_on_submission_id"

  create_table "submissions", force: true do |t|
    t.string   "sub_no"
    t.string   "eff_date"
    t.string   "exp_date"
    t.integer  "agent_id"
    t.integer  "account_id"
    t.integer  "policy_id"
    t.integer  "proposal_id"
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submissions", ["account_id"], name: "index_submissions_on_account_id"
  add_index "submissions", ["agent_id"], name: "index_submissions_on_agent_id"
  add_index "submissions", ["policy_id"], name: "index_submissions_on_policy_id"
  add_index "submissions", ["proposal_id"], name: "index_submissions_on_proposal_id"
  add_index "submissions", ["risk_id"], name: "index_submissions_on_risk_id"

end
