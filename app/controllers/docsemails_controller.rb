class DocsemailsController < ApplicationController
  before_action :set_docsemail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @docsemails = Docsemail.all
    respond_with(@docsemails)
  end

  # def show
  #   respond_with(@docsemail)
  # end

  # def new
  #   @docsemail = Docsemail.new
  #   respond_with(@docsemail)
  # end

  # def edit
  # end

  # def create
  #   @docsemail = Docsemail.new(docsemail_params)
  #   @docsemail.save
  #   respond_with(@docsemail)
  # end

  # def update
  #   @docsemail.update(docsemail_params)
  #   respond_with(@docsemail)
  # end

  # def destroy
  #   @docsemail.destroy
  #   respond_with(@docsemail)
  # end

  private
    def set_docsemail
      @docsemail = Docsemail.find(params[:id])
    end

    def docsemail_params
      params.require(:docsemail).permit(:estado, :xmlrecibido)
    end
end
