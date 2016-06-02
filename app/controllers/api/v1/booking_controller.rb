class Api::V1::BookingController < Api::ApiController
    respond_to :json

  def search
     byebug
     all_rooms_ids = params[:room_type].present? ? Room.where("room_type_id=?",params[:room_type]).pluck(:id) : Room.pluck(:id)
     reserved_room_ids = Booking.getting_reserved_room_ids(params[:date_in].to_s,params[:date_out].to_s,params[:room_type],all_rooms_ids)
     @unreserved_rooms_ids = all_rooms_ids - reserved_room_ids   
     render :json=>{:vacant_rooms=>@unreserved_rooms_ids}
  end
end
