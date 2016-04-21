class Doccompra < ActiveRecord::Base

  has_many :imptoretencompras, dependent: :destroy
  has_many :mpagocompras, dependent: :destroy
  has_many :dscrcgglobalcompras, dependent: :destroy
  has_many :refdetcompras, dependent: :destroy
  has_many :comisioncompras, dependent: :destroy
  has_many :detcompras, dependent: :destroy

  accepts_nested_attributes_for :detcompras
  accepts_nested_attributes_for :imptoretencompras
  accepts_nested_attributes_for :mpagocompras
  accepts_nested_attributes_for :dscrcgglobalcompras
  accepts_nested_attributes_for :comisioncompras
  accepts_nested_attributes_for :refdetcompras

  searchable do
    time :created_at
    text :Folio, :RUTEmisor, :RznSoc, :nombre_doc, :FchEmis
  end


  attr_reader :nombre_doc
  def nombre_doc
    tipo = Tipodte.where(tipo: self.TipoDTE).first 
    return (tipo.nil? ? self.TipoDTE : tipo.nombre)
  end
end
