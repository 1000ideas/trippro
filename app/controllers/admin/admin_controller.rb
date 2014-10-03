class Admin::AdminController < L::Admin::AdminController

  rescue_from CanCan::AccessDenied do |ex|
    sign_out(current_user) if current_user
    redirect_to new_user_session_path
  end


  def settings
    if request.put?
      _settings.update_attributes(params[:settings])
    end

    respond_to do |format|
      format.html
    end

  end


end
