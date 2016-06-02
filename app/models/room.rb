# Room is of a particular type like a luxury suite with queen size bedding and other amenities
class Room < ActiveRecord::Base
  belongs_to :room_type
  has_many :bookings, :through => :booked_rooms  # Edit :needs to be plural same as the has_many relationship   
  has_many :booked_rooms
end 
