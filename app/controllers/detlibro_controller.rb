class DetlibroController < ApplicationController
  def index
    libro = Libro.find(params[:id])
    @detalles =  libro.detlibro.order(tipodte: :asc , folio: :asc )
  end
end
