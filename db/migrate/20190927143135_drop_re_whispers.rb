class DropReWhispers < ActiveRecord::Migration[5.2]
  def change
    drop_table :re_whispers
  end
end
