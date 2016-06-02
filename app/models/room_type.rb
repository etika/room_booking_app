# Contains description of room which includes bedding type ,room attractions and room amenities
class RoomType < ActiveRecord::Base
  has_many :rooms
  belongs_to :bedding_type
  has_and_belongs_to_many :room_attractions
  has_and_belongs_to_many :room_amenities

def room_type_with_bedding_type
    "#{description}: #{bedding_type.description}"
  end
end
