class TestimonialsController < ApplicationController

  def index
    authorize! :read, Testimonial
    @testimonials = Testimonial
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @testimonials}
    end
  end

  def show
    @testimonial = Testimonial.find(params[:id])
    authorize! :read, @testimonial

    respond_to do |format|
      format.html
      format.json { render json: @testimonial }
    end
  end

end
