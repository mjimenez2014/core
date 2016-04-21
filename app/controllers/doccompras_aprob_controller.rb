# encoding: ISO-8859-1
class DoccomprasAprobController < ApplicationController
  respond_to :html
  def index
    @doccompras = Doccompra.where(estado: "APROBADO").where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa})
  end

  def rechazar
    d = Doccompra.find(params[:id])
    d.estado = "RECHAZADO"
    d.save

    @doccompras = Doccompra.where(estado: "APROBADO").where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa})
    respond_to do |format|
        format.html { render action: 'index'}
    end    
  end


end
