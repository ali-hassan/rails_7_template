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

ActiveRecord::Schema[7.0].define(version: 2022_02_11_141901) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "business_infos", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "monthly_revenue_id"
    t.bigint "estimated_credit_score_id"
    t.string "legal_name"
    t.string "dba"
    t.string "phone"
    t.string "email"
    t.string "ein"
    t.string "address"
    t.integer "type_of_entity"
    t.boolean "is_home_based"
    t.boolean "is_rented"
    t.boolean "open_fo_bankruptcy", default: false
    t.string "bankruptcy_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "step", default: 0
    t.integer "ownership_id"
    t.boolean "is_different_dba", default: false
    t.index ["estimated_credit_score_id"], name: "index_business_infos_on_estimated_credit_score_id"
    t.index ["monthly_revenue_id"], name: "index_business_infos_on_monthly_revenue_id"
    t.index ["user_id"], name: "index_business_infos_on_user_id"
  end

  create_table "credit_infos", force: :cascade do |t|
    t.string "lender_name"
    t.bigint "balance_amount_id"
    t.bigint "funding_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["balance_amount_id"], name: "index_credit_infos_on_balance_amount_id"
    t.index ["funding_info_id"], name: "index_credit_infos_on_funding_info_id"
  end

  create_table "decline_reasons", force: :cascade do |t|
    t.string "title"
    t.integer "role_type", default: 1
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funding_infos", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "is_cash_adv"
    t.boolean "accept_card"
    t.bigint "estimated_monthly_cc_sales_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "step", default: 0
    t.integer "purpose_id"
    t.integer "request_amount_id"
    t.index ["estimated_monthly_cc_sales_id"], name: "index_funding_infos_on_estimated_monthly_cc_sales_id"
    t.index ["user_id"], name: "index_funding_infos_on_user_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "title"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kind", default: 0
    t.boolean "qualify_business_duration", default: true
    t.boolean "qualify_monthly_revenue", default: true
    t.index ["kind"], name: "index_leads_on_kind"
  end

  create_table "purposes", force: :cascade do |t|
    t.string "title"
    t.boolean "active", default: true
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "revenue_ranges", force: :cascade do |t|
    t.string "title"
    t.boolean "active", default: true
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kind"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "settings", force: :cascade do |t|
    t.string "title"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.boolean "is_us_citizen", default: true
    t.string "status", default: "incomplete"
    t.integer "step", default: 0
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "terms_and_conditions", default: false
    t.string "social_security_number"
    t.date "dob"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
