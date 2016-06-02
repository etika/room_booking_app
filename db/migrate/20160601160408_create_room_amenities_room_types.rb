class CreateRoomAmenitiesRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_amenities_room_types do |t|
      t.integer :room_type_id
      t.integer :room_amenity_id
    end
  end
end
