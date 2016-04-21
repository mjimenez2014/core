json.array!(@tipodtes) do |tipodte|
  json.extract! tipodte, :id, :tipo, :nombre
  json.url tipodte_url(tipodte, format: :json)
end
