class RemoveRoomTypeIdAndAddRoomIdToReservedRooms < ActiveRecord::Migration
  def change
        remove_column :reserved_rooms, :room_type_id, :integer
        add_column :reserved_rooms, :room_id, :integer
  end
end
