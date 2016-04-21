class UploadformatController < ApplicationController
  def index
  end

  def sendfileventas
    send_file "#{Rails.root}/public/formatoDocVentas.csv"
  end

  def sendfilecompras
    send_file "#{Rails.root}/public/formatoDocCompras.csv"
  end
end
