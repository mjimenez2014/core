class DocumentosController < ApplicationController
  before_filter :authenticate_user!

  def index
    @empresas = Empresa.all
    @sucursales = Sucursal.all

    searchparams = params["/documentos"]
          

    if searchparams.present?
      searchtext = "#{searchparams[:sucursal]} #{searchparams[:tipodte]} #{searchparams[:folio]}#{searchparams[:fecha]}"
      if searchtext != ""
        @search = Documento.search do
          fulltext searchtext
          order_by(:created_at, :desc)
          paginate :page => 1, :per_page => 500
        end
        # @documentos = @search.results
        @documentos = Documento.where(id: @search.results.map(&:id)).where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
      
      else
        @documentos = Documento.where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
      end    
    else  
      @documentos = Documento.where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).order(created_at: :desc).paginate(:page => params[:page], :per_page => 15 )
    end

    respond_to do |format|
      format.html { render action: 'index' }
      format.xls { send_data @documentos.to_csv(col_sep: "\t") }
    end
  end


  def destroy
    @documento.destroy
    respond_to do |format|
      format.html { redirect_to documentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @documento = Documento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documento_params
      params.require(:documento).permit(:fileEnvio, :pdft, :pdfs, :TipoDTE, :Folio, :FchEmis, :IndNoRebaja, :TipoDespacho, :IndTraslado, :TpoImpresion, :IndServicio, :MntBruto, :FmaPago, :FchVenc, :RUTEmisor, :RznSoc, :GiroEmis, :Telefono, :CorreoEmisor, :Acteco, :CdgTraslado, :FolioAut, :FchAut, :Sucursal, :CdgSIISucur, :CodAdicSucur, :DirOrigen, :CmnaOrigen, :CiudadOrigen, :CdgVendedor, :IdAdicEmisor, :RUTMandante, :RUTRecep, :CdgIntRecep, :RznSocRecep, :NumId, :Nacionalidad, :IdAdicRecep, :GiroRecep, :Contacto, :CorreoRecep, :DirRecep, :CmnaRecep, :CiudadRecep, :DirPostal, :CmnaPostal, :CiudadPostal, :RUTSolicita, :Patente, :RUTTrans, :RUTChofer, :NombreChofer, :DirDest, :CmnaDest, :CiudadDest, :CodModVenta, :CodClauVenta, :TotClauVenta, :CodViaTransp, :NombreTransp, :RUTCiaTransp, :NomCiaTransp, :IdAdicTransp, :Booking, :Operador, :CodPtoEmbarque, :IdAdicPtoEmb, :CodPtoDesemb, :IdAdicPtoDesemb, :Tara, :CodUnidMedTara, :PesoBruto, :CodUnidPesoBruto, :PesoNeto, :CodUnidPesoNeto, :TotItems, :TotBultos, :TpoMoneda, :MntNeto, :MntExe, :MntBase, :MntMargenCom, :TasaIVA, :IVA, :IVAProp, :IVATerc, :IVANoRet, :CredEC, :GrntDep, :ValComNeto, :ValComExe, :ValComIVA, :MntTotal, :MontoNF)
    end
end
