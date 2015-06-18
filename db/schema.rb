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

ActiveRecord::Schema.define(version: 20150617201710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booklist_books", force: :cascade do |t|
    t.integer  "booklist_id"
    t.integer  "book_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "booklist_books", ["book_id"], name: "index_booklist_books_on_book_id", using: :btree
  add_index "booklist_books", ["booklist_id"], name: "index_booklist_books_on_booklist_id", using: :btree

  create_table "booklists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "description"
    t.string   "image_url"
    t.string   "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "booklist_books", "booklists"
  add_foreign_key "booklist_books", "books"
end
