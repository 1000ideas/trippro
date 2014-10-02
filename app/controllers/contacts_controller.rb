class ContactsController < ApplicationController

  def index
    authorize! :read, Contact
    @contacts = Contact
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @contacts}
    end
  end

  def show
    @contact = Contact.find(params[:id])
    authorize! :read, @contact

    respond_to do |format|
      format.html
      format.json { render json: @contact }
    end
  end

end
