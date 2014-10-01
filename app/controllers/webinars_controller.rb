class WebinarsController < ApplicationController

  def index
    authorize! :read, Webinar
    @webinars = Webinar
      .paginate page: params[:page]

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

end
