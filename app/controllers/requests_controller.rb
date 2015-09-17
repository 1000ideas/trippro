class RequestsController < ApplicationController
  def new
    @request = Request.new
    authorize! :create, @request

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @request = Request.new(params[:request])
    authorize! :create, @request

    respond_to do |format|
      if @request.valid?
        request_request = render partial: 'requests/create', formats: [:json]
        @response = RequestHandler.send_request(request_request.first, 'demo')
      else
        @errors = @request.errors.full_messages
        format.html { render action: "new" }
        format.js
        flash.notice = info(:error)
      end

    end
  end
end
