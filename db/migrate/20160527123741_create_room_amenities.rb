class CreateRoomAmenities < ActiveRecord::Migration
  def change
    create_table :room_amenities do |t|
      t.string :amenities

      t.timestamps null: false
    end
  end
end
