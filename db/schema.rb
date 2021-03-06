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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131003053936) do

  create_table "admins", :force => true do |t|
    t.string   "first_name",             :default => "",   :null => false
    t.string   "last_name",              :default => "",   :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.boolean  "active",                 :default => true, :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "photo",                  :default => ""
    t.string   "phone",                  :default => ""
  end

  add_index "admins", ["authentication_token"], :name => "index_admins_on_authentication_token", :unique => true
  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "pdf_upload"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "drugs", :force => true do |t|
    t.integer  "proof_id"
    t.string   "code"
    t.string   "abbreviation"
    t.boolean  "result"
    t.string   "unit"
    t.string   "normal"
    t.text     "comment"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "exams", :force => true do |t|
    t.integer  "girl_id"
    t.string   "date_perform"
    t.string   "drug_test_results_on_site"
    t.string   "drug_test_results_lab"
    t.string   "insurance_billed_amount"
    t.string   "insurance_billed_date"
    t.string   "amount_paid"
    t.string   "date_paid"
    t.string   "insurance_company"
    t.string   "benzodiazeipines"
    t.string   "barbituates"
    t.string   "cocaine"
    t.string   "tetrahydrocannabinol"
    t.string   "methamphetamines"
    t.string   "opiates"
    t.string   "maximum_tolerated_dose"
    t.string   "tricyclic_antidepressants"
    t.string   "oxycodone"
    t.string   "phencyclidine"
    t.string   "amphetamines"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "exam_pdf",                  :default => ""
  end

  create_table "expenses", :force => true do |t|
    t.integer  "admin_id"
    t.integer  "vendor_id"
    t.decimal  "amount",       :precision => 8, :scale => 2
    t.string   "payment_date"
    t.string   "payment_type"
    t.text     "note"
    t.string   "pdf_upload"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "girls", :force => true do |t|
    t.string   "first_name",                      :default => ""
    t.string   "middle_name",                     :default => ""
    t.string   "last_name",                       :default => ""
    t.string   "social_security",                 :default => ""
    t.string   "dob",                             :default => ""
    t.string   "address",                         :default => ""
    t.string   "address2",                        :default => ""
    t.string   "city",                            :default => ""
    t.string   "state",                           :default => ""
    t.string   "zip",                             :default => ""
    t.string   "phone",                           :default => ""
    t.boolean  "is_taking_medication",            :default => false
    t.string   "list_dosage",                     :default => ""
    t.string   "clean_date",                      :default => ""
    t.string   "drugs_of_choice",                 :default => ""
    t.string   "emergency_contact1_first_name",   :default => ""
    t.string   "emergency_contact1_last_name",    :default => ""
    t.string   "emergency_contact1_phone",        :default => ""
    t.string   "emergency_contact1_relation",     :default => ""
    t.string   "emergency_contact2_first_name",   :default => ""
    t.string   "emergency_contact2_last_name",    :default => ""
    t.string   "emergency_contact2_phone",        :default => ""
    t.string   "emergency_contact2_relation",     :default => ""
    t.string   "insurance_provider",              :default => ""
    t.string   "group_code",                      :default => ""
    t.string   "policy_number",                   :default => ""
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "email",                           :default => ""
    t.boolean  "active",                          :default => true
    t.string   "arrival_date",                    :default => ""
    t.string   "departure_date",                  :default => ""
    t.string   "referral_source",                 :default => ""
    t.string   "referral_phone_number",           :default => ""
    t.string   "insurance_provider_phone_number", :default => ""
    t.boolean  "clean_urine_upon_arriva",         :default => true
    t.string   "photo",                           :default => ""
    t.string   "drivers_license",                 :default => ""
    t.string   "sponsor_first_name",              :default => ""
    t.string   "sponsor_last_name",               :default => ""
    t.string   "sponsor_phone",                   :default => ""
    t.string   "opportunities_rules",             :default => ""
    t.string   "aa_meeting_sheet",                :default => ""
    t.string   "release_of_liability",            :default => ""
    t.string   "opportunities_intake_form",       :default => ""
    t.string   "opportunities_relapse_plan",      :default => ""
    t.string   "sober_inc",                       :default => ""
    t.string   "reason_for_leaving",              :default => ""
    t.string   "license_front",                   :default => ""
    t.string   "license_back",                    :default => ""
    t.string   "insurance_card_front",            :default => ""
    t.string   "insurance_caed_back",             :default => ""
    t.string   "insurance_card_back",             :default => ""
    t.string   "lease",                           :default => ""
    t.integer  "property_id"
  end

  create_table "insurance_payments", :force => true do |t|
    t.string   "insurance_carrier",     :default => ""
    t.date     "payment_period_start"
    t.date     "payment_period_end"
    t.decimal  "total_amount_received", :default => 0.0
    t.string   "pdf_upload",            :default => ""
    t.text     "description",           :default => ""
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "username"
    t.string   "password"
    t.boolean  "active"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "admin_id"
    t.string   "message"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.boolean  "to_addmin",  :default => true
    t.boolean  "to_girl",    :default => true
  end

  create_table "notes", :force => true do |t|
    t.integer  "girl_id"
    t.integer  "admin_id"
    t.text     "note"
    t.string   "consequence"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "girl_id"
    t.decimal  "amount",         :precision => 8, :scale => 2
    t.string   "payment_date",                                 :default => ""
    t.string   "payment_type"
    t.text     "note"
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.string   "payment_method",                               :default => ""
    t.string   "payment_number",                               :default => ""
  end

  create_table "proofs", :force => true do |t|
    t.integer  "girl_id"
    t.string   "date_perform"
    t.string   "drug_test_results_on_site"
    t.string   "drug_test_results_lab"
    t.string   "insurance_billed_amount"
    t.string   "insurance_billed_date"
    t.string   "amount_paid"
    t.string   "date_paid"
    t.string   "insurance_company"
    t.string   "exam_pdf"
    t.decimal  "amount_paid2"
    t.date     "insurance_billed_date2"
    t.date     "date_paid2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "rooms"
    t.integer  "beds"
    t.integer  "sqft"
    t.string   "owner"
    t.string   "owner_address"
    t.string   "owner_address2"
    t.string   "owner_city"
    t.string   "owner_state"
    t.string   "owner_zip"
    t.string   "owner_phone"
    t.string   "owner_email"
    t.decimal  "monthly_cost"
    t.boolean  "active",         :default => true
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "prospects", :force => true do |t|
    t.string   "first_name", :default => ""
    t.string   "last_name",  :default => ""
    t.string   "address",    :default => ""
    t.string   "address2",   :default => ""
    t.string   "city",       :default => ""
    t.string   "state",      :default => ""
    t.string   "zip",        :default => ""
    t.string   "phone",      :default => ""
    t.string   "email",      :default => ""
    t.string   "source",     :default => ""
    t.text     "notes",      :default => ""
    t.string   "outcome",    :default => ""
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "vacations", :force => true do |t|
    t.integer  "girl_id"
    t.string   "issued_date"
    t.string   "departure_date"
    t.string   "return_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "vendors", :force => true do |t|
    t.string   "first_name",   :default => ""
    t.string   "last_name",    :default => ""
    t.string   "address",      :default => ""
    t.string   "address2",     :default => ""
    t.string   "city",         :default => ""
    t.string   "state",        :default => ""
    t.string   "zip",          :default => ""
    t.string   "phone_number", :default => ""
    t.string   "email",        :default => ""
    t.text     "description",  :default => ""
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
