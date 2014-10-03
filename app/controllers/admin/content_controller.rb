class Admin::ContentController < ApplicationController

  layout "l/layouts/admin"

  def update
    authorize! :manage, Content

    content = params[:content] || {}
    Rails.logger.debug content
    Content.transaction do 
      content.each do |name, c|
   	    Rails.logger.debug name
 	    Rails.logger.debug c
        element = Content.where(id: name).first || Content.new(id: name)
        element.value = c["value"]
        element.save!
      end
    end

    render text: ""
  # rescue
  #   head :unprocessable_entity
  end

  def settings
    @settings = Settings.new

    respond_to do |format| 
      format.html
    end
  end

  def settings_update
    @settings = Settings.new(params[:settings])


    respond_to do |format| 
      if @settings.save
        format.html { redirect_to settings_admin_path, notice: t('update.success')}
      else
        format.html { render action: :settings }
      end
    end
  end

end