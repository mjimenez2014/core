class LogIat < ActiveRecord::Base

  def empresa
    rznsocial = " "
    empresa = Empresa.find_by_rut(self.rut)
    unless  empresa.nil?
      rznsocial = empresa.rznsocial
    end
    return rznsocial
  end

  def nomsucursal
    sucursal = Sucursal.find_by_cdgsiisucur(self.sucursal) 
    if sucursal.nil?
      nomsucursal = ""
    else
      nomsucursal = sucursal.nombre
    end  
    return nomsucursal
  end

end
