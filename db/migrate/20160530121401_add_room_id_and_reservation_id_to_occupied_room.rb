class AddRoomIdAndReservationIdToOccupiedRoom < ActiveRecord::Migration
  def change
    add_column :occupied_rooms, :room_id, :integer
    add_column :occupied_rooms, :reservation_id, :integer
  end
end
