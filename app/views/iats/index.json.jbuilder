json.array!(@iats) do |iat|
  json.extract! iat, :id, :nombre, :sucursal, :ultimo_ping, :auth_token, :ping_inicio, :espacio_disco, :memoria, :user_id
  json.url iat_url(iat, format: :json)
end
