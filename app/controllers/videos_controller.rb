class VideosController < ApplicationController

  def index
    authorize! :read, Video
    @videos = Video
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @videos}
    end
  end

  def show
    @video = Video.find(params[:id])
    authorize! :read, @video

    respond_to do |format|
      format.html
      format.json { render json: @video }
    end
  end

end
