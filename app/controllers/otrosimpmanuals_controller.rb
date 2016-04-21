class OtrosimpmanualsController < ApplicationController
  before_action :set_otrosimpmanual, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @otrosimpmanuals = Otrosimpmanual.all
    respond_with(@otrosimpmanuals)
  end

  def show
    respond_with(@otrosimpmanual)
  end

  def new
    @otrosimpmanual = Otrosimpmanual.new
    respond_with(@otrosimpmanual)
  end

  def edit
  end

  def create
    @otrosimpmanual = Otrosimpmanual.new(otrosimpmanual_params)
    @otrosimpmanual.save
    respond_with(@otrosimpmanual)
  end

  def update
    @otrosimpmanual.update(otrosimpmanual_params)
    respond_with(@otrosimpmanual)
  end

  def destroy
    @otrosimpmanual.destroy
    respond_with(@otrosimpmanual)
  end

  private
    def set_otrosimpmanual
      @otrosimpmanual = Otrosimpmanual.find(params[:id])
    end

    def otrosimpmanual_params
      params.require(:otrosimpmanual).permit(:TipoImp, :TasaImp, :MontoImp, :docmanual_id)
    end
end
