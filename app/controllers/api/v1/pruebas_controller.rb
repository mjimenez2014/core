class Api::V1::PruebasController < Api::V1::ApiController

	def create
		@prueba = Prueba.new
		@prueba.rut = params[:prueba][:rut]
		@prueba.nombre = params[:prueba][:nombre]
		if @prueba.save
			render 'api/v1/pruebas/create'
		else
			render json: @prueba.errors, status: :unprocessable_entity 
	  end				
	end

	def index
		@pruebas = Prueba.all
		render 'api/v1/pruebas/index'
	end

 
end