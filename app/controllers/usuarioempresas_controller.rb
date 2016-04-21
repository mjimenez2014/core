class UsuarioempresasController < ApplicationController
  before_action :set_usuarioempresa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @usuarioempresas = Usuarioempresa.all
    respond_with(@usuarioempresas)
  end

  def show
    respond_with(@usuarioempresa)
  end

  def new
    @usuarioempresa = Usuarioempresa.new
    respond_with(@usuarioempresa)
  end

  def edit
  end

  def create
    @usuarioempresa = Usuarioempresa.new(usuarioempresa_params)
    @usuarioempresa.save
    respond_with(@usuarioempresa)
  end

  def update
    @usuarioempresa.update(usuarioempresa_params)
    respond_with(@usuarioempresa)
  end

  def destroy
    @usuarioempresa.destroy
    respond_with(@usuarioempresa)
  end

  private
    def set_usuarioempresa
      @usuarioempresa = Usuarioempresa.find(params[:id])
    end

    def usuarioempresa_params
      params.require(:usuarioempresa).permit(:rutempresa, :useremail)
    end
end
