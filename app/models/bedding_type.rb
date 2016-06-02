# type of bedding in a room 
class BeddingType < ActiveRecord::Base
  has_many :room_types
end
