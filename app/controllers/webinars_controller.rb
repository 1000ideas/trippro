class WebinarsController < ApplicationController
  require_relative '../models/registration.rb'

  def index
    authorize! :read, Webinar
    @webinars = Webinar
      .paginate page: params[:page]
    @webinars_month = @webinars.sort_by! { |i| i.when }.group_by {|a| a.when.month}

    respond_to do |format|
      format.html
      format.json { render json: @webinars}
    end
  end

  def show
    @webinar = Webinar.find(params[:id])
    authorize! :read, @webinar

    respond_to do |format|
      format.html
      format.json { render json: @webinar }
    end
  end

  def registration
    @webinar = Webinar.find(params[:id])
    @registration = Registration.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def register
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.valid?
        @response = RequestHandler.send_request(hash_for_request(@registration), 'webinar')
        format.js
      else
        @errors = @registration.errors.full_messages
        format.html { render action: "registration" }
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
      "Message" => obj.company
    }
  end
end
