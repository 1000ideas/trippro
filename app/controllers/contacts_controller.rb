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

  def new
    @contact = Contact.new
    authorize! :create, @contact

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    authorize! :create, @contact

    respond_to do |format|
      if @contact.valid?
        @response = RequestHandler.send_request(hash_for_request(@contact), 'contactUs')
        format.js
      else
        @errors = @contact.errors.full_messages
        format.html {render action: "new"}
        format.js
      end
    end
  end

  private

  def hash_for_request(obj)
    {
      "FirstName" => obj.name,
      "ContactEmail" => obj.email,
      "WorkPhone" => obj.phone,
      "Message" => obj.message
    }
  end

end
