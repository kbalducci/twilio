json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :who, :where, :string, :when, :what, :why
  json.url appointment_url(appointment, format: :json)
end
