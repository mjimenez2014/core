json.array!(@sucursals) do |sucursal|
  json.extract! sucursal, :id, :nombre, :cdgsiisucur, :empresa_id
  json.url sucursal_url(sucursal, format: :json)
end
