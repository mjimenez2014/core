class RefdetcomprasController < ApplicationController
  before_action :set_refdetcompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @refdetcompras = Refdetcompra.all
    respond_with(@refdetcompras)
  end

  # def show
  #   respond_with(@refdetcompra)
  # end

  # def new
  #   @refdetcompra = Refdetcompra.new
  #   respond_with(@refdetcompra)
  # end

  # def edit
  # end

  # def create
  #   @refdetcompra = Refdetcompra.new(refdetcompra_params)
  #   @refdetcompra.save
  #   respond_with(@refdetcompra)
  # end

  # def update
  #   @refdetcompra.update(refdetcompra_params)
  #   respond_with(@refdetcompra)
  # end

  # def destroy
  #   @refdetcompra.destroy
  #   respond_with(@refdetcompra)
  # end

  private
    def set_refdetcompra
      @refdetcompra = Refdetcompra.find(params[:id])
    end

    def refdetcompra_params
      params.require(:refdetcompra).permit(:NroLinRef, :TpoDocRef, :IndGlobal, :FolioRef, :RUTOtr, :IdAdicOtr, :FchRef, :CodRef, :RazonRef, :doccompra_id)
    end
end
