class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :room_number
      t.string :floor
      t.string :status
      t.integer :room_type_id
      t.integer :bedding_type_id
      t.integer :room_amenity_id
      t.integer :room_attraction_id
      t.timestamps null: false
    end
  end
end
