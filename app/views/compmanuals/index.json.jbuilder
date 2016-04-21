json.array!(@compmanuals) do |compmanual|
  json.extract! compmanual, :id, :tipodoc, :folio, :fchemis, :rutemisor, :rutrecep, :rznsoemisor, :mntneto, :mntexe, :mntiva, :otrosimpto, :mnttotal, :impto18, :impto10, :impto25, :impto30, :estado
  json.url compmanual_url(compmanual, format: :json)
end
