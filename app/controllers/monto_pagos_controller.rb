class MontoPagosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_monto_pago, only: [:show, :edit, :update, :destroy]

  # GET /monto_pagos
  # GET /monto_pagos.json
  def index
    @monto_pagos = MontoPago.all
  end

  # # GET /monto_pagos/1
  # # GET /monto_pagos/1.json
  # def show
  # end

  # # GET /monto_pagos/new
  # def new
  #   @monto_pago = MontoPago.new
  # end

  # # GET /monto_pagos/1/edit
  # def edit
  # end

  # # POST /monto_pagos
  # # POST /monto_pagos.json
  # def create
  #   @monto_pago = MontoPago.new(monto_pago_params)

  #   respond_to do |format|
  #     if @monto_pago.save
  #       format.html { redirect_to @monto_pago, notice: 'Monto pago was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @monto_pago }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @monto_pago.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /monto_pagos/1
  # # PATCH/PUT /monto_pagos/1.json
  # def update
  #   respond_to do |format|
  #     if @monto_pago.update(monto_pago_params)
  #       format.html { redirect_to @monto_pago, notice: 'Monto pago was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @monto_pago.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /monto_pagos/1
  # # DELETE /monto_pagos/1.json
  # def destroy
  #   @monto_pago.destroy
  #   respond_to do |format|
  #     format.html { redirect_to monto_pagos_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monto_pago
      @monto_pago = MontoPago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monto_pago_params
      params.require(:monto_pago).permit(:FchPago, :MntPago, :documento_id)
    end
end
