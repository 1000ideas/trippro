class WebinarsController < ApplicationController

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

end
