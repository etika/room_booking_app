# Storing Booking and room Details 1 booking can have many rooms booked and 1 room can
 # occupied by more than 2  Bookings by different people
 class BookedRoom < ActiveRecord::Base
  belongs_to :booking
  belongs_to :room
end
