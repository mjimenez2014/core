json.array!(@dsc_rcg_globals) do |dsc_rcg_global|
  json.extract! dsc_rcg_global, :id, :NroLinDR, :TpoMov, :GlosaDR, :TpoValor, :ValorDR, :IndExeDR, :documento_id
  json.url dsc_rcg_global_url(dsc_rcg_global, format: :json)
end
