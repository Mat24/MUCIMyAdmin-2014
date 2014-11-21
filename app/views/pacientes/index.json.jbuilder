json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :user_id
  json.url paciente_url(paciente, format: :json)
end
