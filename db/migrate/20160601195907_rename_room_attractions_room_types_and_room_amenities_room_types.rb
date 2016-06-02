class RenameRoomAttractionsRoomTypesAndRoomAmenitiesRoomTypes < ActiveRecord::Migration
  def change
        rename_table :room_amenities_room_types, :room_amenities_types
        rename_table :room_attractions_room_types, :room_attractions_types
  end
end
