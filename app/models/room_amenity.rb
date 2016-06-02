# Room Amenity includes cleaning service,or full time room service
class RoomAmenity < ActiveRecord::Base
  has_and_belongs_to_many :room_types
end
