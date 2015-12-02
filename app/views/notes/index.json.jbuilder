json.array!(@notes) do |note|
  json.extract! note, :id, :name, :comment, :date, :status
  json.url note_url(note, format: :json)
end
