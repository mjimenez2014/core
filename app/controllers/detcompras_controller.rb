class DetcomprasController < ApplicationController

  respond_to :html

  def index
    @detcompras =  Doccompra.find(params[:id]).detcompras
    @dscGlobal = Doccompra.find(params[:id]).dscrcgglobalcompras
    @refdet = Doccompra.find(params[:id]).refdetcompras
    @imptos = Doccompra.find(params[:id]).imptoretencompras
  end

end
