ActiveRecord::Schema.define(version: 2019_02_25_172536) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smoothie_ingredients", force: :cascade do |t|
    t.string "unit"
    t.integer "quantity"
    t.integer "smoothie_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smoothies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
