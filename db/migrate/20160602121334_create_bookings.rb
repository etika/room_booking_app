class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.timestamps null: false
      t.integer :user_id
      t.string :mode
      t.string :status
      t.datetime :date_in
      t.datetime :date_out
      t.integer :head_count
      t.string :comments
    end
  end
end
