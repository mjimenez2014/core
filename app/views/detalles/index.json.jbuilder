json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :NroLinDet, :TpoCodigo, :VlrCodigo, :TpoDocLiq, :IndExe, :IndAgente, :MntBaseFaena, :MntMargComer, :PrcConsFinal, :NmbItem, :DscItem, :QtyRef, :UnmdRef, :PrcRef, :QtyItem, :FchElabor, :FchVencim, :UnmdItem, :PrcItem, :DescuentoPct, :DescuentoMonto, :CodImpAdic, :MontoItem, :documento_id
  json.url detalle_url(detalle, format: :json)
end
