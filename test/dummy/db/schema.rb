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

ActiveRecord::Schema.define(version: 20160914023521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleriable_galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "galleriable_type"
    t.integer  "galleriable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["galleriable_type", "galleriable_id"], name: "by_galleriable", using: :btree
  end

  create_table "galleriable_photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "name"
    t.string   "caption"
    t.integer  "photographer_id"
    t.string   "photographable_type"
    t.integer  "photographable_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["photographable_type", "photographable_id"], name: "by_photographable", using: :btree
  end

  create_table "galleriable_slides", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "gallery_id"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id", "gallery_id"], name: "index_galleriable_slides_on_photo_id_and_gallery_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
