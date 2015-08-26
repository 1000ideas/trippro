class Admin::SignupsController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Signup
    @signups = Signup
      .filter(params[:filter])

    @signups = @signups.order(sort_order) if sort_results?
    @signups = @signups.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @signup = Signup.new
    authorize! :create, @signup

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @signup = Signup.find(params[:id])
    authorize! :update, @signup

    respond_to do |format|
      format.html
      format.js
    end
  end
  def show
    @signup = Signup.find(params[:id])
    authorize! :manage, @signup

    respond_to do |format|
      format.html
      format.js
    end
  end
  def create
    @signup = Signup.new(params[:signup])
    authorize! :create, @signup

    respond_to do |format|
      if @signup.save
        @signup.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_signups_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @signup = Signup.find(params[:id])
    authorize! :update, @signup

    respond_to do |format|
      if @signup.update_attributes(params[:signup])
        @signup.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_signups_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @signup = Signup.find(params[:id])
    authorize! :destroy, @signup
    @signup.destroy
    @signup.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Signup
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Signup.selection_object(selection)

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
