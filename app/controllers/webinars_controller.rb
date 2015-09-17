class WebinarsController < ApplicationController
  require 'request_handler'
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
        register_request = render partial: 'webinars/register', formats: [:json]
        @response = RequestHandler.send_request(register_request.first, 'webinar')
      else
        format.html { render action: "registration" }
      end
    end
  end
end
