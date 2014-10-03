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
      if @contact.save
        ContactMailer.contact_message(@contact).deliver
        # @contact.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(contacts_path) }
      else
        format.html { render action: "new" }
        flash.notice =  info(:error)
      end
      format.js
    end
  end

end
