class ImpuestoRetensController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_impuesto_reten, only: [:show, :edit, :update, :destroy]

  # GET /impuesto_retens
  # GET /impuesto_retens.json
  def index
    @impuesto_retens = ImpuestoReten.all
  end

  # # GET /impuesto_retens/1
  # # GET /impuesto_retens/1.json
  # def show
  # end

  # # GET /impuesto_retens/new
  # def new
  #   @impuesto_reten = ImpuestoReten.new
  # end

  # # GET /impuesto_retens/1/edit
  # def edit
  # end

  # # POST /impuesto_retens
  # # POST /impuesto_retens.json
  # def create
  #   @impuesto_reten = ImpuestoReten.new(impuesto_reten_params)

  #   respond_to do |format|
  #     if @impuesto_reten.save
  #       format.html { redirect_to @impuesto_reten, notice: 'Impuesto reten was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @impuesto_reten }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @impuesto_reten.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /impuesto_retens/1
  # # PATCH/PUT /impuesto_retens/1.json
  # def update
  #   respond_to do |format|
  #     if @impuesto_reten.update(impuesto_reten_params)
  #       format.html { redirect_to @impuesto_reten, notice: 'Impuesto reten was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @impuesto_reten.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /impuesto_retens/1
  # # DELETE /impuesto_retens/1.json
  # def destroy
  #   @impuesto_reten.destroy
  #   respond_to do |format|
  #     format.html { redirect_to impuesto_retens_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impuesto_reten
      @impuesto_reten = ImpuestoReten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impuesto_reten_params
      params.require(:impuesto_reten).permit(:TipoImp, :TasaImp, :MontoImp, :documento_id)
    end
end
