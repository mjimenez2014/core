class DaradminController < ApplicationController
  def index
    @users = User.all
  end

  def daradmin
    user = User.find(params[:id])
    user.addadmin

    @users = User.all
    respond_to do |format|
      format.html { render action: 'index' }
    end  
  end

  def quitaradmin
    user = User.find(params[:id])
    user.lessadmin

    @users = User.all
    respond_to do |format|
      format.html { render action: 'index' }
    end  
  end
end
