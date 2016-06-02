class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :description
      t.integer :max_capacity
      t.integer :price_per_person

      t.timestamps null: false
    end
  end
end
