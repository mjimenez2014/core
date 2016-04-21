json.array!(@otrosimpmanuals) do |otrosimpmanual|
  json.extract! otrosimpmanual, :id, :TipoImp, :TasaImp, :MontoImp, :docmanual_id
  json.url otrosimpmanual_url(otrosimpmanual, format: :json)
end
