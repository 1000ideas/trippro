class CategoriesController < ApplicationController

  def index
    authorize! :read, Category
    @categories = Category
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @categories}
    end
  end

  def show
    @category = Category.find(params[:id])
    authorize! :read, @category

    respond_to do |format|
      format.html
      format.json { render json: @category }
    end
  end

end
