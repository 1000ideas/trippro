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

ActiveRecord::Schema.define(:version => 20150831125535) do

  create_table "activities", :force => true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "activities", ["owner_id", "owner_type"], :name => "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], :name => "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], :name => "index_activities_on_trackable_id_and_trackable_type"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["deleted_at"], :name => "index_categories_on_deleted_at"

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contacts", ["deleted_at"], :name => "index_contacts_on_deleted_at"

  create_table "contents", :id => false, :force => true do |t|
    t.string   "id"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contents", ["id"], :name => "index_contents_on_id", :unique => true

  create_table "news", :force => true do |t|
    t.text     "content"
    t.string   "title"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "published_at"
    t.datetime "deleted_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "category_id"
  end

  add_index "news", ["deleted_at"], :name => "index_news_on_deleted_at"

  create_table "news_translations", :force => true do |t|
    t.integer  "news_id",    :null => false
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.text     "content"
    t.datetime "deleted_at"
  end

  add_index "news_translations", ["locale"], :name => "index_news_translations_on_locale"
  add_index "news_translations", ["news_id"], :name => "index_news_translations_on_news_id"

  create_table "requests", :force => true do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.string   "company"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.datetime "deleted_at"
  end

  create_table "screenshots", :force => true do |t|
    t.text     "description"
    t.integer  "order"
    t.datetime "deleted_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "screenshots", ["deleted_at"], :name => "index_screenshots_on_deleted_at"

  create_table "signups", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone_number"
    t.string   "email"
    t.string   "password"
    t.string   "retype_password"
    t.string   "job_title"
    t.integer  "fax_number"
    t.string   "referrer"
    t.string   "agency_name"
    t.string   "agency_phone"
    t.string   "president"
    t.string   "adress"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.string   "diff_adress"
    t.string   "diff_city"
    t.string   "diff_country"
    t.string   "diff_state"
    t.string   "diff_zip"
    t.string   "arc"
    t.string   "iata"
    t.string   "ttt"
    t.string   "clia"
    t.string   "webiste"
    t.string   "business_type"
    t.string   "hba"
    t.string   "host"
    t.string   "affiliate"
    t.string   "asta"
    t.string   "sabre_pcc"
    t.string   "galileo_pcc"
    t.string   "worldspan_pcc"
    t.string   "amadeus_pcc"
    t.string   "apollo_pcc"
    t.datetime "deleted_at"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "signups", ["deleted_at"], :name => "index_signups_on_deleted_at"

  create_table "testimonials", :force => true do |t|
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "content"
    t.string   "name"
    t.string   "position"
    t.datetime "deleted_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "testimonials", ["deleted_at"], :name => "index_testimonials_on_deleted_at"

  create_table "tinymce_folders", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tinymce_folders", ["parent_id"], :name => "index_tinymce_folders_on_parent_id"
  add_index "tinymce_folders", ["user_id"], :name => "index_tinymce_folders_on_user_id"

  create_table "tinymce_uploads", :force => true do |t|
    t.string   "title"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "folder_id"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "tinymce_uploads", ["folder_id"], :name => "index_tinymce_uploads_on_folder_id"
  add_index "tinymce_uploads", ["user_id"], :name => "index_tinymce_uploads_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                            :default => "", :null => false
    t.string   "encrypted_password",               :default => "", :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "roles_mask",          :limit => 8, :default => 0,  :null => false
    t.datetime "deleted_at"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "users", ["deleted_at"], :name => "index_users_on_deleted_at"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "page_name"
    t.datetime "deleted_at"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "order"
    t.string   "cover_photo_file_name"
    t.string   "cover_photo_content_type"
    t.integer  "cover_photo_file_size"
    t.datetime "cover_photo_updated_at"
  end

  add_index "videos", ["deleted_at"], :name => "index_videos_on_deleted_at"

  create_table "webinars", :force => true do |t|
    t.string   "language"
    t.datetime "when"
    t.string   "link"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "webinars", ["deleted_at"], :name => "index_webinars_on_deleted_at"

end
