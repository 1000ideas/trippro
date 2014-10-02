class ApplicationController < ActionController::Base
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
    authorize! :read, Testimonial
    @testimonials = Testimonial
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @testimonials}
    end
  end

  def tour

  end

  def contact
  end

  def faq

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
end

