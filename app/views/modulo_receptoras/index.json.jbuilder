json.array!(@modulo_receptoras) do |modulo_receptora|
  json.extract! modulo_receptora, :id, :paciente_id, :nombre_entidad, :tipo_entidad, :nombre_receptor, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_recepcion, :fecha_valoracion, :fecha_elaboracion, :fecha_notificacion, :numero_dictamen
  json.url modulo_receptora_url(modulo_receptora, format: :json)
end
