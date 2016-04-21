class DscRcgGlobalsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_dsc_rcg_global, only: [:show, :edit, :update, :destroy]


  def index
    @dsc_rcg_globals = DscRcgGlobal.all
  end

  # def show
  # end


  # def new
  #   @dsc_rcg_global = DscRcgGlobal.new
  # end

  # def edit
  # end


  # def create
  #   @dsc_rcg_global = DscRcgGlobal.new(dsc_rcg_global_params)

  #   respond_to do |format|
  #     if @dsc_rcg_global.save
  #       format.html { redirect_to @dsc_rcg_global, notice: 'Dsc rcg global was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @dsc_rcg_global }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @dsc_rcg_global.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  # def update
  #   respond_to do |format|
  #     if @dsc_rcg_global.update(dsc_rcg_global_params)
  #       format.html { redirect_to @dsc_rcg_global, notice: 'Dsc rcg global was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @dsc_rcg_global.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  # def destroy
  #   @dsc_rcg_global.destroy
  #   respond_to do |format|
  #     format.html { redirect_to dsc_rcg_globals_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dsc_rcg_global
      @dsc_rcg_global = DscRcgGlobal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dsc_rcg_global_params
      params.require(:dsc_rcg_global).permit(:NroLinDR, :TpoMov, :GlosaDR, :TpoValor, :ValorDR, :IndExeDR, :documento_id)
    end
end
