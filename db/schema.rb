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

ActiveRecord::Schema[7.0].define(version: 2022_09_22_221347) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discs", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "category"
    t.integer "speed"
    t.integer "glide"
    t.integer "turn"
    t.integer "fade"
    t.string "stability"
    t.string "flight_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_url", default: "https://m.media-amazon.com/images/I/61+1Z62KXKL._AC_SX425_.jpg"
    t.string "category_slug"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "picture", default: "https://media.istockphoto.com/vectors/default-avatar-profile-icon-vector-vector-id1337144146?b=1&k=20&m=1337144146&s=170667a&w=0&h=ys-RUZbXzQ-FQdLstHeWshI4ViJuEhyEa4AzQNQ0rFI="
  end

end
