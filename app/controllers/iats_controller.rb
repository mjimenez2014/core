class IatsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_iat, only: [:show, :edit, :update, :destroy]

  # GET /iats
  # GET /iats.json
  def index
    @iats = Iat.all
  end

  # # GET /iats/1
  # # GET /iats/1.json
  # def show
  # end

  # # GET /iats/new
  # def new
  #   @iat = Iat.new
  # end

  # # GET /iats/1/edit
  # def edit
  # end

  # # POST /iats
  # # POST /iats.json
  # def create
  #   @iat = Iat.new(iat_params)

  #   respond_to do |format|
  #     if @iat.save
  #       format.html { redirect_to @iat, notice: 'Iat was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @iat }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @iat.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /iats/1
  # # PATCH/PUT /iats/1.json
  # def update
  #   respond_to do |format|
  #     if @iat.update(iat_params)
  #       format.html { redirect_to @iat, notice: 'Iat was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @iat.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /iats/1
  # # DELETE /iats/1.json
  # def destroy
  #   @iat.destroy
  #   respond_to do |format|
  #     format.html { redirect_to iats_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iat
      @iat = Iat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iat_params
      params.require(:iat).permit(:nombre, :sucursal, :ultimo_ping, :auth_token, :ping_inicio, :espacio_disco, :memoria, :user_id)
    end
end
