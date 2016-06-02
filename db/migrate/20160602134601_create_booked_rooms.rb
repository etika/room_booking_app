class CreateBookedRooms < ActiveRecord::Migration
  def change
    create_table :booked_rooms do |t|
      t.integer :booking_id
      t.integer :room_id
      t.timestamps null: false
    end
  end
end
