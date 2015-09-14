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
  end

end