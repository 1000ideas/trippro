class Admin::VideosController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Video
    @videos = Video
      .filter(params[:filter])

    @videos = @videos.order(sort_order) if sort_results?
    @videos = @videos.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @video = Video.new
    authorize! :create, @video

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @video = Video.find(params[:id])
    authorize! :update, @video

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @video = Video.new(params[:video])
    authorize! :create, @video

    respond_to do |format|
      if @video.save
        @video.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_videos_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @video = Video.find(params[:id])
    authorize! :update, @video

    respond_to do |format|
      if @video.update_attributes(params[:video])
        @video.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_videos_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @video = Video.find(params[:id])
    authorize! :destroy, @video
    @video.destroy
    @video.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Video
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Video.selection_object(selection)

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
