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

ActiveRecord::Schema[7.1].define(version: 2024_06_16_104151) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Membuat tabel 'users' dengan struktur berikut:
  create_table "users", id: { type: :string, limit: 36 }, force: :cascade do |t|
    # Kolom 'id' dengan tipe string, panjang 36 karakter
    t.string "user_code", limit: 14 # Kolom 'user_code' dengan tipe string, panjang 14 karakter
    t.string "username", limit: 50 # Kolom 'username' dengan tipe string, panjang 50 karakter
    t.string "password", limit: 255 # Kolom 'password' dengan tipe string, panjang 255 karakter
    t.string "email", limit: 255 # Kolom 'email' dengan tipe string, panjang 255 karakter
    t.datetime "created_at", null: false # Kolom 'created_at' dengan tipe datetime, tidak boleh null
    t.datetime "updated_at", null: false # Kolom 'updated_at' dengan tipe datetime, tidak boleh null
  end

end
