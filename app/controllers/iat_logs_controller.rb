class IatLogsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_iat_log, only: [:show, :edit, :update, :destroy]

  # GET /iat_logs
  # GET /iat_logs.json
  def index
    @iat_logs = IatLog.all
  end

  # # GET /iat_logs/1
  # # GET /iat_logs/1.json
  # def show
  # end

  # # GET /iat_logs/new
  # def new
  #   @iat_log = IatLog.new
  # end

  # # GET /iat_logs/1/edit
  # def edit
  # end

  # # POST /iat_logs
  # # POST /iat_logs.json
  # def create
  #   @iat_log = IatLog.new(iat_log_params)

  #   respond_to do |format|
  #     if @iat_log.save
  #       format.html { redirect_to @iat_log, notice: 'Iat log was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @iat_log }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @iat_log.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /iat_logs/1
  # # PATCH/PUT /iat_logs/1.json
  # def update
  #   respond_to do |format|
  #     if @iat_log.update(iat_log_params)
  #       format.html { redirect_to @iat_log, notice: 'Iat log was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @iat_log.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /iat_logs/1
  # # DELETE /iat_logs/1.json
  # def destroy
  #   @iat_log.destroy
  #   respond_to do |format|
  #     format.html { redirect_to iat_logs_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iat_log
      @iat_log = IatLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iat_log_params
      params.require(:iat_log).permit(:description, :iat_id)
    end
end
