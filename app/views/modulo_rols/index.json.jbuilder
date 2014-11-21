json.array!(@modulo_rols) do |modulo_rol|
  json.extract! modulo_rol, :id, :paciente_id, :institucion, :nivel_grado, :direccion, :telefono, :email, :observaciones
  json.url modulo_rol_url(modulo_rol, format: :json)
end
