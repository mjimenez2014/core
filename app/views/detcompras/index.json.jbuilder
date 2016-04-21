json.array!(@detcompras) do |detcompra|
  json.extract! detcompra, :id, :NroLinDet, :TpoCodigo, :VlrCodigo, :TpoDocLiq, :IndExe, :IndAgente, :MntBaseFaena, :MntMargComer, :PrcConsFinal, :NmbItem, :DscItem, :QtyRef, :UnmdRef, :PrcRef, :QtyItem, :FchElabor, :FchVencim, :UnmdItem, :PrcItem, :DescuentoPct, :DescuentoMonto, :CodImpAdic, :MontoItem, :doccompra_id
  json.url detcompra_url(detcompra, format: :json)
end
