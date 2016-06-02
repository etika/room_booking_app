class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|

      t.timestamps null: false
      t.integer :booking_id
      t.datetime :check_in
      t.datetime :check_out
      t.string :comments
    end
  end
end
