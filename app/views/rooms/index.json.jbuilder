json.array!(@rooms) do |room|
  json.extract! room, :id, :room_type_id, :name, :room_number, :floor, :status
  json.url room_url(room, format: :json)
end
