class ComisioncomprasController < ApplicationController
  before_action :set_comisioncompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comisioncompras = Comisioncompra.all
    respond_with(@comisioncompras)
  end

  # def show
  #   respond_with(@comisioncompra)
  # end

  # def new
  #   @comisioncompra = Comisioncompra.new
  #   respond_with(@comisioncompra)
  # end

  # def edit
  # end

  # def create
  #   @comisioncompra = Comisioncompra.new(comisioncompra_params)
  #   @comisioncompra.save
  #   respond_with(@comisioncompra)
  # end

  # def update
  #   @comisioncompra.update(comisioncompra_params)
  #   respond_with(@comisioncompra)
  # end

  # def destroy
  #   @comisioncompra.destroy
  #   respond_with(@comisioncompra)
  # end

  private
    def set_comisioncompra
      @comisioncompra = Comisioncompra.find(params[:id])
    end

    def comisioncompra_params
      params.require(:comisioncompra).permit(:NroLinCom, :TipoMovim, :Glosa, :ValComNeto, :ValComExe, :ValComIVA, :doccompra_id)
    end
end
