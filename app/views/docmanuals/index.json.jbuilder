json.array!(@docmanuals) do |docmanual|
  json.extract! docmanual, :id, :tipodoc, :folio, :fchemis, :rutemisor, :rutrecep, :rznsocrecep, :mntneto, :mntexe, :mntiva, :otrosimpto, :mnttotal, :impto18, :impto10, :impto25, :impto30, :estado
  json.url docmanual_url(docmanual, format: :json)
end
