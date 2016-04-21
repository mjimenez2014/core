class CdgitemsController < ApplicationController
  before_action :set_cdgitem, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cdgitems = Cdgitem.all
    respond_with(@cdgitems)
  end

  def show
    respond_with(@cdgitem)
  end

  def new
    @cdgitem = Cdgitem.new
    respond_with(@cdgitem)
  end

  def edit
  end

  def create
    @cdgitem = Cdgitem.new(cdgitem_params)
    @cdgitem.save
    respond_with(@cdgitem)
  end

  def update
    @cdgitem.update(cdgitem_params)
    respond_with(@cdgitem)
  end

  def destroy
    @cdgitem.destroy
    respond_with(@cdgitem)
  end

  private
    def set_cdgitem
      @cdgitem = Cdgitem.find(params[:id])
    end

    def cdgitem_params
      params.require(:cdgitem).permit(:TpoCodigo, :VlrCodigo, :detcompra_id)
    end
end
