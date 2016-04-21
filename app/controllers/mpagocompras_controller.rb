class MpagocomprasController < ApplicationController
  before_action :set_mpagocompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mpagocompras = Mpagocompra.all
    respond_with(@mpagocompras)
  end

  def show
    respond_with(@mpagocompra)
  end

  def new
    @mpagocompra = Mpagocompra.new
    respond_with(@mpagocompra)
  end

  def edit
  end

  def create
    @mpagocompra = Mpagocompra.new(mpagocompra_params)
    @mpagocompra.save
    respond_with(@mpagocompra)
  end

  def update
    @mpagocompra.update(mpagocompra_params)
    respond_with(@mpagocompra)
  end

  def destroy
    @mpagocompra.destroy
    respond_with(@mpagocompra)
  end

  private
    def set_mpagocompra
      @mpagocompra = Mpagocompra.find(params[:id])
    end

    def mpagocompra_params
      params.require(:mpagocompra).permit(:FchPago, :MntPago, :doccompra_id)
    end
end
