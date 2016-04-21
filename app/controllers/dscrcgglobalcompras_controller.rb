class DscrcgglobalcomprasController < ApplicationController
  before_action :set_dscrcgglobalcompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dscrcgglobalcompras = Dscrcgglobalcompra.all
    respond_with(@dscrcgglobalcompras)
  end

  # def show
  #   respond_with(@dscrcgglobalcompra)
  # end

  # def new
  #   @dscrcgglobalcompra = Dscrcgglobalcompra.new
  #   respond_with(@dscrcgglobalcompra)
  # end

  # def edit
  # end

  # def create
  #   @dscrcgglobalcompra = Dscrcgglobalcompra.new(dscrcgglobalcompra_params)
  #   @dscrcgglobalcompra.save
  #   respond_with(@dscrcgglobalcompra)
  # end

  # def update
  #   @dscrcgglobalcompra.update(dscrcgglobalcompra_params)
  #   respond_with(@dscrcgglobalcompra)
  # end

  # def destroy
  #   @dscrcgglobalcompra.destroy
  #   respond_with(@dscrcgglobalcompra)
  # end

  private
    def set_dscrcgglobalcompra
      @dscrcgglobalcompra = Dscrcgglobalcompra.find(params[:id])
    end

    def dscrcgglobalcompra_params
      params.require(:dscrcgglobalcompra).permit(:NroLinDR, :TpoMov, :GlosaDR, :TpoValor, :ValorDR, :IndExeDR, :doccompra_id)
    end
end
