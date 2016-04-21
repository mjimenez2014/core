json.array!(@envioclientes) do |enviocliente|
  json.extract! enviocliente, :id, :folio, :tipo, :rut, :rznsoc
  json.url enviocliente_url(enviocliente, format: :json)
end
