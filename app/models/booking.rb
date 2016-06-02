# Booking can befrom mobile or thru website
# Booking can be Advance or can be on the spot
# Entry is made when finally the person occupies the room
class Booking < ActiveRecord::Base
  STATUS =['Advance Booking','On the spot Booking']
  MODE=['Website','App','Mobile Website']
  belongs_to :user
  has_many :rooms, :through => :booked_rooms  # Edit :needs to be plural same as the has_many relationship   
  has_many :booked_rooms
  has_one :entry

  def self.getting_reserved_room_ids(date_from,date_to,room_type,all_rooms_ids)
    byebug
    date_in,date_out,room_type = date_from,date_to,room_type
    reserved_rooms =  (date_in.present? && date_out.present?) ? BookedRoom.where("room_id in (?)",all_rooms_ids) : []
    reserved_room_ids=[]
    reserved_rooms.each do |r|
      if  r.booking.date_in.to_date>= date_in.to_date && r.booking.date_out<=date_out.to_time.localtime
       reserved_room_ids << r.room.id
      end
    end
     return reserved_room_ids
  end
end
