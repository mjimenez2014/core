class ImptoretencomprasController < ApplicationController
  before_action :set_imptoretencompra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imptoretencompras = Imptoretencompra.all
    respond_with(@imptoretencompras)
  end

  # def show
  #   respond_with(@imptoretencompra)
  # end

  # def new
  #   @imptoretencompra = Imptoretencompra.new
  #   respond_with(@imptoretencompra)
  # end

  # def edit
  # end

  # def create
  #   @imptoretencompra = Imptoretencompra.new(imptoretencompra_params)
  #   @imptoretencompra.save
  #   respond_with(@imptoretencompra)
  # end

  # def update
  #   @imptoretencompra.update(imptoretencompra_params)
  #   respond_with(@imptoretencompra)
  # end

  # def destroy
  #   @imptoretencompra.destroy
  #   respond_with(@imptoretencompra)
  # end

  private
    def set_imptoretencompra
      @imptoretencompra = Imptoretencompra.find(params[:id])
    end

    def imptoretencompra_params
      params.require(:imptoretencompra).permit(:TipoImp, :TasaImp, :MontoImp, :doccompra_id)
    end
end
