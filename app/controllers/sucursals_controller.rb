class SucursalsController < ApplicationController
  before_action :set_sucursal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sucursals = Sucursal.all
    respond_with(@sucursals)
  end

  def show
    respond_with(@sucursal)
  end

  def new
    @sucursal = Sucursal.new
    respond_with(@sucursal)
  end

  def edit
  end

  def create
    @sucursal = Sucursal.new(sucursal_params)
    @sucursal.save
    respond_with(@sucursal)
  end

  def update
    @sucursal.update(sucursal_params)
    respond_with(@sucursal)
  end

  def destroy
    @sucursal.destroy
    respond_with(@sucursal)
  end

  private
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    def sucursal_params
      params.require(:sucursal).permit(:nombre, :cdgsiisucur, :empresa_id)
    end
end
