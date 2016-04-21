class Otrosimpcompmanual < ActiveRecord::Base
  belongs_to :compmanual
  
  def nomtipo
    Tipodte.find_by_tipo(self.compmanual.tipodoc).nombre
  end

end
