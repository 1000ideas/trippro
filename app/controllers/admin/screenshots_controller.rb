class Admin::ScreenshotsController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Screenshot
    @screenshots = Screenshot
      .filter(params[:filter])

    @screenshots = @screenshots.order(sort_order) if sort_results?
    @screenshots = @screenshots.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @screenshot = Screenshot.new
    authorize! :create, @screenshot

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @screenshot = Screenshot.find(params[:id])
    authorize! :update, @screenshot

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @screenshot = Screenshot.new(params[:screenshot])
    authorize! :create, @screenshot

    respond_to do |format|
      if @screenshot.save
        @screenshot.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_screenshots_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @screenshot = Screenshot.find(params[:id])
    authorize! :update, @screenshot

    respond_to do |format|
      if @screenshot.update_attributes(params[:screenshot])
        @screenshot.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_screenshots_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @screenshot = Screenshot.find(params[:id])
    authorize! :destroy, @screenshot
    @screenshot.destroy
    @screenshot.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Screenshot
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Screenshot.selection_object(selection)

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
