json.array!(@contribuyentes) do |contribuyente|
  json.extract! contribuyente, :id, :rut, :nombre, :email
  json.url contribuyente_url(contribuyente, format: :json)
end
