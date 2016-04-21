json.array!(@usuarioempresas) do |usuarioempresa|
  json.extract! usuarioempresa, :id, :rutempresa, :useremail
  json.url usuarioempresa_url(usuarioempresa, format: :json)
end
