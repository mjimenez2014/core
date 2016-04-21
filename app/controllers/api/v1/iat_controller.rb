class Api::V1::IatController < Api::V1::ApiController
  

  require 'uri'
  require 'net/http'
  require 'net/https'

  def login
    @iat = Iat.find(params[:id])
    @log = Iat_log.new

    if @iat
      @log.iat = @iat
      @log.description = "Login"
      @log.save

      render "api/v1/iat/login"
    else
      render json: 'Ivalid Iat', status: :unauthorized   
    end  
  end

  def ping
    unless params[:udte].nil?
      paramJson = eval(params[:udte].force_encoding('iso-8859-1').encode('utf-8'))

      sucursal = paramJson["CdgSIISucur"].to_s || "0"
      rut = paramJson["RutEmisor"] || "1"
      tipoDte = paramJson["TipoDTE"] || 0
      folio = paramJson["Folio"] || 0

      log = LogIat.where(rut: rut).where(sucursal: sucursal).first

      if !log.nil?
        log.ultimo_ping = Time.now
        log.ultimoping = Time.now
        log.tipo_dte = tipoDte
        log.ultimo_folio = folio
        log.udtejson = paramJson.to_s
        log.save
      else  
        log = LogIat.new
        log.sucursal = sucursal
        log.rut = rut
        log.ultimo_ping = Time.now
        log.ultimoping = Time.now
        log.tipo_dte = tipoDte
        log.ultimo_folio = folio
        log.udtejson = paramJson.to_s
        log.save
      end
    end
    render "/api/v1/iat/ping"
  end

  def isoffline
    iats = LogIat.where(:ultimoping =>  2.days.ago..2.minutes.ago)
    iats.each  do |iat|
      NotificationMailer.alert_iat_email("jimenezmaury@gmail.com", iat.sucursal, iat.empresa).deliver
    end
    render "/api/v1/iat/ping"
  end



end  