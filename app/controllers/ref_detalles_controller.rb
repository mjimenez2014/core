class RefDetallesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_ref_detalle, only: [:show, :edit, :update, :destroy]

  # GET /ref_detalles
  # GET /ref_detalles.json
  def index
    @ref_detalles = RefDetalle.all
  end

  # # GET /ref_detalles/1
  # # GET /ref_detalles/1.json
  # def show
  # end

  # # GET /ref_detalles/new
  # def new
  #   @ref_detalle = RefDetalle.new
  # end

  # # GET /ref_detalles/1/edit
  # def edit
  # end

  # # POST /ref_detalles
  # # POST /ref_detalles.json
  # def create
  #   @ref_detalle = RefDetalle.new(ref_detalle_params)

  #   respond_to do |format|
  #     if @ref_detalle.save
  #       format.html { redirect_to @ref_detalle, notice: 'Ref detalle was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @ref_detalle }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @ref_detalle.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /ref_detalles/1
  # # PATCH/PUT /ref_detalles/1.json
  # def update
  #   respond_to do |format|
  #     if @ref_detalle.update(ref_detalle_params)
  #       format.html { redirect_to @ref_detalle, notice: 'Ref detalle was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @ref_detalle.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /ref_detalles/1
  # # DELETE /ref_detalles/1.json
  # def destroy
  #   @ref_detalle.destroy
  #   respond_to do |format|
  #     format.html { redirect_to ref_detalles_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ref_detalle
      @ref_detalle = RefDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ref_detalle_params
      params.require(:ref_detalle).permit(:NroLinRef, :TpoDocRef, :IndGlobal, :FolioRef, :RUTOtr, :IdAdicOtr, :FchRef, :CodRef, :RazonRef, :documento_id)
    end
end
