class CreateWhispers2 < ActiveRecord::Migration[5.2]
  def change
    create_table :whispers do |t|
      t.string :content

      t.timestamps
    end
  end
end
