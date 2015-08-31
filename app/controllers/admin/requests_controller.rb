class Admin::RequestsController < ApplicationController

  layout "l/admin"
  def index
    authorize! :manage, Request
    @requests = Request
      .filter(params[:filter])

    @requests = @requests.order(sort_order) if sort_results?
    @requests = @requests.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @request = Request.new
    authorize! :create, @request

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @request = Request.find(params[:id])
    authorize! :update, @request

    respond_to do |format|
      format.html
      format.js
    end
  end
  def show
    @request = Request.find(params[:id])
    authorize! :manage, @request

    respond_to do |format|
      format.html
      format.js
    end
  end
  def create
    @request = Request.new(params[:request])
    authorize! :create, @request

    respond_to do |format|
      if @request.save
        @request.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_requests_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @request = Request.find(params[:id])
    authorize! :update, @request

    respond_to do |format|
      if @request.update_attributes(params[:request])
        @request.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_requests_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @request = Request.find(params[:id])
    authorize! :destroy, @request
    @request.destroy
    @request.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Request
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Request.selection_object(selection)

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
