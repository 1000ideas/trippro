class Admin::WebinarsController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Webinar
    @webinars = Webinar
      .filter(params[:filter])

    @webinars = @webinars.order(sort_order) if sort_results?
    @webinars = @webinars.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @webinar = Webinar.new
    authorize! :create, @webinar

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @webinar = Webinar.find(params[:id])
    authorize! :update, @webinar

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @webinar = Webinar.new(params[:webinar])
    authorize! :create, @webinar

    respond_to do |format|
      if @webinar.save
        @webinar.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_webinars_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @webinar = Webinar.find(params[:id])
    authorize! :update, @webinar

    respond_to do |format|
      if @webinar.update_attributes(params[:webinar])
        @webinar.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_webinars_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @webinar = Webinar.find(params[:id])
    authorize! :destroy, @webinar
    @webinar.destroy
    @webinar.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Webinar
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Webinar.selection_object(selection)

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
