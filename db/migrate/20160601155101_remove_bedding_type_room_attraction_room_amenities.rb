class RemoveBeddingTypeRoomAttractionRoomAmenities < ActiveRecord::Migration
  def change
    remove_column :rooms, :bedding_type_id, :integer
    remove_column :rooms, :room_attraction_id, :integer
    remove_column :rooms, :room_amenity_id, :integer
  end
end
