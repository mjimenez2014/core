json.array!(@pruebas) do |prueba|
  json.extract! prueba, :id, :rut, :nombre
  json.url prueba_url(prueba, format: :json)
end
