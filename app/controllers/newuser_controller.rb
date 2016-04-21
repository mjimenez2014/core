class NewuserController < ApplicationController
  def index
  end
  def new
    @user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password])
    if @user.save
      @msg = "Usuario creado exitosamente"
    else
      @msg = "El unuario no ha podido crearse, revise los datos e intente nuevamente"
    end    
  end
end
