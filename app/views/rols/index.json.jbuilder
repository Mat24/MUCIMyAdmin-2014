json.array!(@rols) do |rol|
  json.extract! rol, :id, :user_id, :nombre
  json.url rol_url(rol, format: :json)
end
