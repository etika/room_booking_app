class CreateRoomAttractions < ActiveRecord::Migration
  def change
    create_table :room_attractions do |t|
      t.string :attraction

      t.timestamps null: false
    end
  end
end
