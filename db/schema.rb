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

ActiveRecord::Schema.define(version: 2022_07_13_171013) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "type_of_address"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.string "suite_or_apartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "latitude"
    t.string "longitude"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "batterie_type"
    t.string "status"
    t.integer "employeeId"
    t.date "commissioning_date"
    t.date "last_inspection_date"
    t.string "certificate_of_operation"
    t.text "informations"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.bigint "employee_id"
    t.index ["building_id"], name: "index_batteries_on_building_id"
    t.index ["employee_id"], name: "index_batteries_on_employee_id"
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.index ["building_id"], name: "index_building_details_on_building_id"
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "number_and_street"
    t.string "building_administrator_full_name"
    t.string "building_administrator_email"
    t.string "building_administrator_phone"
    t.string "building_technical_contact_full_name"
    t.string "building_technical_contact_email"
    t.string "building_technical_contact_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_buildings_on_address_id"
    t.index ["customer_id"], name: "index_buildings_on_customer_id"
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "column_type"
    t.integer "number_of_floors_served"
    t.string "status"
    t.text "information"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "battery_id"
    t.index ["battery_id"], name: "index_columns_on_battery_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "company_name"
    t.string "company_headquarters_address"
    t.string "company_contact_full_name"
    t.string "company_contact_phone"
    t.string "company_contact_email"
    t.string "company_description"
    t.string "service_technical_authority_full_name"
    t.string "service_technical_authority_phone"
    t.string "service_technical_manager_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "serial_number"
    t.string "model"
    t.string "elevator_type"
    t.string "status"
    t.date "commissioning_date"
    t.date "last_inspection_date"
    t.string "inspection_certificate"
    t.text "information"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "column_id"
    t.index ["column_id"], name: "index_elevators_on_column_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "googlemapsforemps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "full_name"
    t.string "company_name"
    t.string "email"
    t.string "phone"
    t.string "project_name"
    t.text "project_description"
    t.string "department"
    t.text "message"
    t.binary "file_attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "lead_created_at"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "building_type"
    t.integer "number_of_apartments"
    t.integer "number_of_floors"
    t.integer "number_of_basement"
    t.integer "number_of_businesses"
    t.integer "number_of_parking_space"
    t.integer "number_of_elevator_cages"
    t.integer "number_of_seperate_tenant_companies"
    t.integer "maximum_number_of_occupants_per_floor"
    t.integer "hours_of_activity"
    t.string "quality_of_elevator_service"
    t.integer "unit_price_of_each_elevator"
    t.integer "amount_of_elevator_needed"
    t.text "total_price_of_the_elevators"
    t.text "installation_fees"
    t.text "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quote_email"
    t.string "compagny_name"
    t.datetime "quote_created_at"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batteries", "buildings"
  add_foreign_key "batteries", "employees"
  add_foreign_key "building_details", "buildings"
  add_foreign_key "buildings", "addresses"
  add_foreign_key "buildings", "customers"
  add_foreign_key "columns", "batteries"
  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "users"
  add_foreign_key "elevators", "columns"
  add_foreign_key "employees", "users"
end
