# Attraction can be room is pool facing and has gym facility with it
class RoomAttraction < ActiveRecord::Base
  has_and_belongs_to_many :room_types
end
