# encoding: ISO-8859-1
class DoccomprasController < ApplicationController
  before_action :set_doccompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    searchparams = params["/doccompras"]
    if searchparams.present?
      if searchparams[:search] != ""
        @search = Doccompra.search do
          fulltext searchparams[:search]
          order_by(:created_at, :desc)
          paginate :page => 1, :per_page => 500
        end
       # @doccompras = @search.results
        @doccompras = Doccompra.where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).where(id: @search.results.map(&:id)).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
      else
        @doccompras = Doccompra.where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).where(estado: nil).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
      end  
    else  
      @doccompras = Doccompra.where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).where(estado: nil).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
    end
  end


  def rechazar
    d = Doccompra.find(params[:id])
    d.estado = "RECHAZADO"
    d.save

    @doccompras = Doccompra.where(estado: nil).where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa})
    respond_to do |format|
        format.html { render action: 'index'}
    end    
  end

  def aprobar
    d = Doccompra.find(params[:id])
    d.estado = "APROBADO"
    d.save

    @doccompras = Doccompra.where(estado: nil).where(:RUTRecep => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa})
    respond_to do |format|
        format.html { render action: 'index'}
    end  
  end  

  def sendxml
    doccompra = Doccompra.find(params[:id])
    send_data doccompra.xmlrecibido.force_encoding('iso-8859-1') , :filename => "xml#{doccompra.Folio}.xml"
  end  

  private
    def set_doccompra
      @doccompra = Doccompra.find(params[:id])
    end

    def doccompra_params
      params.require(:doccompra).permit(:TipoDTE, :Folio, :FchEmis, :IndNoRebaja, :TipoDespacho, :IndTraslado, :TpoImpresion, :IndServicio, :MntBruto, :FmaPago, :FchVenc, :RUTEmisor, :RznSoc, :GiroEmis, :Telefono, :CorreoEmisor, :Acteco, :CdgTraslado, :FolioAut, :FchAut, :Sucursal, :CdgSIISucur, :CodAdicSucur, :DirOrigen, :CmnaOrigen, :CiudadOrigen, :CdgVendedor, :IdAdicEmisor, :RUTMandante, :RUTRecep, :CdgIntRecep, :RznSocRecep, :NumId, :Nacionalidad, :IdAdicRecep, :GiroRecep, :Contacto, :CorreoRecep, :DirRecep, :CmnaRecep, :CiudadRecep, :DirPostal, :CmnaPostal, :CiudadPostal, :RUTSolicita, :Patente, :RUTTrans, :RUTChofer, :NombreChofer, :DirDest, :CmnaDest, :CiudadDest, :CodModVenta, :CodClauVenta, :TotClauVenta, :CodViaTransp, :NombreTransp, :RUTCiaTransp, :NomCiaTransp, :IdAdicTransp, :Booking, :Operador, :CodPtoEmbarque, :IdAdicPtoEmb, :CodPtoDesemb, :IdAdicPtoDesemb, :Tara, :CodUnidMedTara, :PesoBruto, :CodUnidPesoBruto, :PesoNeto, :CodUnidPesoNeto, :TotItems, :TotBultos, :TpoMoneda, :MntNeto, :MntExe, :MntBase, :MntMargenCom, :TasaIVA, :IVA, :IVAProp, :IVATerc, :IVANoRet, :CredEC, :GrntDep, :ValComNeto, :ValComExe, :ValComIVA, :MntTotal, :MontoNF, :xmlrecibido, :estado)
    end
end
