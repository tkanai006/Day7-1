ActiveRecord::Schema.define(version: 2019_09_27_143314) do

  enable_extension "plpgsql"

  create_table "whispers", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
