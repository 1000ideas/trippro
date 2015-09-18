class ApplicationController < ActionController::Base
  require 'request_handler'
  def _settings
    L::Settings.instance
  end
  private :_settings
  helper_method :_settings
  protect_from_forgery

  layout 'application'

  respond_to :html

  rescue_from CanCan::AccessDenied do
    if current_user
      redirect_to root_path, flash: I18n.t('access_denied')
    else
      session[:requested_path] = request.path
      redirect_to new_user_session_path#, flash: I18n.t('access_denied')
    end
  end

  def index
    # authorize! :read, Testimonial
    @testimonials = Testimonial
      .paginate page: params[:page]

    @videos = Video.where(page_name: "homepage").order("`order` ASC")
    if @videos.empty?
      @cover_photo = "/assets/prev_post.jpg"
    else
      @cover_photo = @videos.first.cover_photo.url(:original, timestamp: false)
    end

    @screenshots = Screenshot.order("`order` ASC")

    respond_to do |format|
      format.html
      format.json { render json: @testimonials}
    end
  end

  def tour
    @videos = Video.where(page_name: "tour").order("`order` ASC")
    if @videos.empty?
      @cover_photo = "/assets/featured_video.jpg"
    else
      @cover_photo = @videos.first.cover_photo.url(:original, timestamp: false)
    end
  end

  def contact
  end

  def faq

  end
  
  def terms_of_service
  end

  def get_started

  end

  def demo

  end

  private

  def after_sign_in_path_for(resource)
    requested_path, session[:requested_path] = session[:requested_path], nil
    requested_path || "/admin"
  end

  def _settings
    Settings.instance
  end
  helper_method :_settings
end

