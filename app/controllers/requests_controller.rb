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
        @response = RequestHandler.send_request(hash_for_request(@request), 'demo')
        format.js
      else
        @errors = @request.errors.full_messages
        format.html { render action: "new" }
        format.js
      end
    end
  end

  private

  def hash_for_request(obj)
    {
      "FirstName" => obj.name,
      "ContactEmail" => obj.email,
      "WorkPhone" => obj.phone_number,
      "Company" => obj.company
    }
  end
end
