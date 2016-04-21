json.array!(@otrosimpcompmanuals) do |otrosimpcompmanual|
  json.extract! otrosimpcompmanual, :id, :TipoImp, :TasaImp, :MontoImp, :compmanual_id
  json.url otrosimpcompmanual_url(otrosimpcompmanual, format: :json)
end
