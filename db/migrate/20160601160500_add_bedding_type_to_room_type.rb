class AddBeddingTypeToRoomType < ActiveRecord::Migration
  def change
    add_column :room_types, :bedding_type_id, :integer
  end
end
