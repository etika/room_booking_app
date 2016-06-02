class BookingController < ApplicationController
  def search
     all_rooms_ids = params[:room_type].present? ? Room.where("room_type_id=?",params[:room_type]).pluck(:id) : Room.pluck(:id)
     reserved_room_ids = Booking.getting_reserved_room_ids(params[:date_in],params[:date_out],params[:room_type],all_rooms_ids)
     @unreserved_rooms_ids = all_rooms_ids - reserved_room_ids
  end

  def booking_info
    @reservations = current_user.bookings
  end
end
