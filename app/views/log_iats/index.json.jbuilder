json.array!(@log_iats) do |log_iat|
  json.extract! log_iat, :id, :sucursal, :rut, :ultimo_ping, :tipo_dte, :ultimo_folio
  json.url log_iat_url(log_iat, format: :json)
end
