json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :rznsocial, :rut
  json.url empresa_url(empresa, format: :json)
end
