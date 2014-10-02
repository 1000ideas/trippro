class Admin::TestimonialsController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Testimonial
    @testimonials = Testimonial
      .filter(params[:filter])

    @testimonials = @testimonials.order(sort_order) if sort_results?
    @testimonials = @testimonials.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @testimonial = Testimonial.new
    authorize! :create, @testimonial

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
    authorize! :update, @testimonial

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @testimonial = Testimonial.new(params[:testimonial])
    authorize! :create, @testimonial

    respond_to do |format|
      if @testimonial.save
        @testimonial.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_testimonials_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    authorize! :update, @testimonial

    respond_to do |format|
      if @testimonial.update_attributes(params[:testimonial])
        @testimonial.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_testimonials_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    authorize! :destroy, @testimonial
    @testimonial.destroy
    @testimonial.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Testimonial
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Testimonial.selection_object(selection)

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
