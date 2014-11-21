json.array!(@modulo_calificadas) do |modulo_calificada|
  json.extract! modulo_calificada, :id, :paciente_id, :nombre_completo, :genero, :tipo_documento, :numero_identificacion, :fecha_nacimiento, :edad, :lugar_nacimiento, :estrato_economico, :nivel_ingresos, :etapa_ciclo_vital, :ciudad, :departamento, :direccion, :telefono, :email, :nivel_escolaridad, :estado_civil, :afiliacion, :motivo_calificacion
  json.url modulo_calificada_url(modulo_calificada, format: :json)
end
