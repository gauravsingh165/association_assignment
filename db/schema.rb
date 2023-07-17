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

ActiveRecord::Schema[7.0].define(version: 2023_07_17_073706) do
  create_table "comments", charset: "utf8mb3", force: :cascade do |t|
    t.string "commentt"
    t.bigint "user_id", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_comments_on_feed_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "conversations", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_conversations_on_group_id"
  end

  create_table "dislikes", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_dislikes_on_feed_id"
    t.index ["user_id"], name: "index_dislikes_on_user_id"
  end

  create_table "feeds", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_feeds_on_user_id"
  end

  create_table "group_feed_approvals", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "feed_id", null: false
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_group_feed_approvals_on_feed_id"
    t.index ["group_id"], name: "index_group_feed_approvals_on_group_id"
  end

  create_table "group_memberships", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_memberships_on_group_id"
    t.index ["user_id"], name: "index_group_memberships_on_user_id"
  end

  create_table "groups", charset: "utf8mb3", force: :cascade do |t|
    t.string "group_name"
    t.string "group_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "feed_id", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_images_on_feed_id"
  end

  create_table "individual_conversations", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individual_messages", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "individual_conversation_id", null: false
    t.bigint "sender_id", null: false
    t.bigint "reciver_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_conversation_id"], name: "index_individual_messages_on_individual_conversation_id"
    t.index ["reciver_id"], name: "index_individual_messages_on_reciver_id"
    t.index ["sender_id"], name: "index_individual_messages_on_sender_id"
  end

  create_table "likes", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_likes_on_feed_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "messages", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "recivers", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "senders", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shared_feeds", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "sender_id", null: false
    t.bigint "reciver_id", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_shared_feeds_on_feed_id"
    t.index ["reciver_id"], name: "index_shared_feeds_on_reciver_id"
    t.index ["sender_id"], name: "index_shared_feeds_on_sender_id"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "feeds"
  add_foreign_key "comments", "users"
  add_foreign_key "conversations", "groups"
  add_foreign_key "dislikes", "feeds"
  add_foreign_key "dislikes", "users"
  add_foreign_key "feeds", "users"
  add_foreign_key "group_feed_approvals", "feeds"
  add_foreign_key "group_feed_approvals", "groups"
  add_foreign_key "group_memberships", "groups"
  add_foreign_key "group_memberships", "users"
  add_foreign_key "images", "feeds"
  add_foreign_key "individual_messages", "individual_conversations"
  add_foreign_key "individual_messages", "recivers"
  add_foreign_key "individual_messages", "senders"
  add_foreign_key "likes", "feeds"
  add_foreign_key "likes", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "shared_feeds", "feeds"
  add_foreign_key "shared_feeds", "recivers"
  add_foreign_key "shared_feeds", "senders"
  add_foreign_key "shared_feeds", "users"
end
