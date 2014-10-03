class Admin::ContactsController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Contact
    @contacts = Contact
      .filter(params[:filter])

    @contacts = @contacts.order(sort_order) if sort_results?
    @contacts = @contacts.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
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

  def edit
    @contact = Contact.find(params[:id])
    authorize! :update, @contact

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
        @contact.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_contacts_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @contact = Contact.find(params[:id])
    authorize! :update, @contact

    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        @contact.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_contacts_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    authorize! :destroy, @contact
    @contact.destroy
    @contact.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Contact
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Contact.selection_object(selection)

    respond_to do |format|
      if selection.perform!
        selection.each do |obj|
          obj.create_activity selection.action, owner: current_user
        end
        format.html { redirect_to :back, notice: info(selection.action, :success) }
      else
        format.html { redirect_to :back, alert: info(selection.action, :failure) }
      end
    end
  end

end
