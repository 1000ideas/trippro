class ScreenshotsController < ApplicationController

  def index
    authorize! :read, Screenshot
    @screenshots = Screenshot
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @screenshots}
    end
  end

  def show
    @screenshot = Screenshot.find(params[:id])
    authorize! :read, @screenshot

    respond_to do |format|
      format.html
      format.json { render json: @screenshot }
    end
  end

end
