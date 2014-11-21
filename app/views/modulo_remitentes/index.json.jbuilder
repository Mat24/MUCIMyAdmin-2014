json.array!(@modulo_remitentes) do |modulo_remitente|
  json.extract! modulo_remitente, :id, :paciente_id, :nombre, :nombre_entidad, :tipo_entidad, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_solicitud
  json.url modulo_remitente_url(modulo_remitente, format: :json)
end
