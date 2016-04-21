class SubdsctosController < ApplicationController
  before_action :set_subdscto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subdsctos = Subdscto.all
    respond_with(@subdsctos)
  end

  # def show
  #   respond_with(@subdscto)
  # end

  # def new
  #   @subdscto = Subdscto.new
  #   respond_with(@subdscto)
  # end

  # def edit
  # end

  # def create
  #   @subdscto = Subdscto.new(subdscto_params)
  #   @subdscto.save
  #   respond_with(@subdscto)
  # end

  # def update
  #   @subdscto.update(subdscto_params)
  #   respond_with(@subdscto)
  # end

  # def destroy
  #   @subdscto.destroy
  #   respond_with(@subdscto)
  # end

  private
    def set_subdscto
      @subdscto = Subdscto.find(params[:id])
    end

    def subdscto_params
      params.require(:subdscto).permit(:TipoDscto, :ValorDscto, :detcompra_id)
    end
end
