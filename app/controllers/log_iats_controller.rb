class LogIatsController < ApplicationController
  before_action :set_log_iat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @log_iats = LogIat.where(:rut => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa})
    respond_with(@log_iats)
  end

  def show
    respond_with(@log_iat)
  end

  def new
    @log_iat = LogIat.new
    respond_with(@log_iat)
  end

  def edit
  end

  def create
    @log_iat = LogIat.new(log_iat_params)
    @log_iat.save
    respond_with(@log_iat)
  end

  def update
    @log_iat.update(log_iat_params)
    respond_with(@log_iat)
  end

  def destroy
    @log_iat.destroy
    respond_with(@log_iat)
  end

  private
    def set_log_iat
      @log_iat = LogIat.find(params[:id])
    end

    def log_iat_params
      params.require(:log_iat).permit(:sucursal, :rut, :ultimo_ping, :tipo_dte, :ultimo_folio)
    end
end
