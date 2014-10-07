class WebinarsController < ApplicationController

  def index
    authorize! :read, Webinar
    @webinars = Webinar
      .paginate page: params[:page]
    @webinars_month = @webinars.group_by { |t| t.when.beginning_of_month }

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
