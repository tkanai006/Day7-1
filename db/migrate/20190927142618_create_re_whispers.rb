class CreateReWhispers < ActiveRecord::Migration[5.2]
  def change
    create_table :re_whispers do |t|
      t.string :content

      t.timestamps
    end
  end
end
