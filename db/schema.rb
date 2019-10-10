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

ActiveRecord::Schema.define(version: 2019_10_10_115327) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.integer "status"
    t.string "stripe_transaction_id"
    t.decimal "subtotal"
    t.decimal "studiotime_fee"
    t.decimal "total_booking_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "avatar"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "bsb"
    t.string "sort_code"
    t.string "routing_number"
    t.string "bank_account_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "rating"
    t.string "reviewer_type"
    t.integer "reviewer_id"
    t.integer "user_id"
    t.boolean "verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewer_type", "reviewer_id"], name: "index_reviews_on_reviewer_type_and_reviewer_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.integer "booking_id"
    t.time "from"
    t.time "to"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_slots_on_booking_id"
  end

  create_table "studio_types", force: :cascade do |t|
    t.string "name"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_studio_types_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.integer "minimum_booking"
    t.string "amenities"
    t.string "main_equipment"
    t.string "rules"
    t.boolean "cancellation_policy"
    t.string "address"
    t.string "apt_suite_building"
    t.decimal "price_per_hour"
    t.boolean "audio_engineer_included"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "bio"
    t.string "email"
    t.datetime "email_verified_at"
    t.string "facebook_handle"
    t.string "insta_handle"
    t.string "twitter_handle"
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_no"
    t.datetime "mobile_no_verified_at"
    t.string "password_digest"
    t.string "stream_url"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "expire_at"
    t.integer "kind"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_verifications_on_user_id"
  end

end
