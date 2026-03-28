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

ActiveRecord::Schema[7.1].define(version: 2020_01_13_190602) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_configs", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  #the user has information that will support the different clubs
  #though these are not necessary for implementation
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.integer :user_number
    t.string :college
    t.string :eboard, array: true, default: []
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  #creates a calendar event that is then put on the calendar
  create_table :calendar_events do |t|
    t.string :name, null: false
    t.string :date, null: false
    t.string :time
    t.string :location, null: false
    t.text :description
    t.integer :event_user_number
    t.integer :event_total_number
    
    t.references :club, null: false, foreign_key: { to_table: :users }

    t.timestamps
  end

  #Creates documents to hold all of the objects that are put inside
  #shoud be able to hold pdf's and slide shows as well as url's
   create_table :document do |t|
    t.string :name, null: false
    t.string :data_type, null: false
    t.string :object_type, null: false
    t.text :description, null: false
    t.string :data, array: true, default: [] , null: false

    t.integer :event_user_number
    t.integer :event_total_number
    
    t.references :club, null: false, foreign_key: { to_table: :users }

    t.timestamps
  end

 
 

end
