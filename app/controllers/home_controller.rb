class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
   cantxsuc = Documento.where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).count(:group => '"CdgSIISucur"', :conditions => ["created_at >= ?", Date.today.at_beginning_of_month])
    @d = Hash[cantxsuc.map { |k, v| [Sucursal.find_by_cdgsiisucur(k.to_s).present? ? Sucursal.find_by_cdgsiisucur(k.to_s).nombre : "" , v] }]

    mntxsuc = Documento.where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).sum('"MntNeto"', :group => '"CdgSIISucur"',:conditions => ["created_at >= ?", Date.today.at_beginning_of_month] )
    @f = Hash[mntxsuc.map { |k, v| [Sucursal.find_by_cdgsiisucur(k.to_s).present? ? Sucursal.find_by_cdgsiisucur(k.to_s).nombre : "", v] }]

    @p = Documento.where(:RUTEmisor => Usuarioempresa.where(useremail:current_user.email).map {|u| u.rutempresa}).sum('"MntNeto"', :group => '"RUTEmisor"',:conditions => ["created_at >= ?", Date.today.at_beginning_of_month])

  end
end
