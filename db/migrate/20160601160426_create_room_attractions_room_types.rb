class CreateRoomAttractionsRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_attractions_room_types do |t|
      t.integer :room_attraction_id
      t.integer :room_type_id
    end
  end
end
