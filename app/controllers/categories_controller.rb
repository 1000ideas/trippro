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
     @categories = Category
      .paginate page: params[:page]
    @news = L::News.where(category_id: params[:id]).paginate page: params[:page]

    respond_to do |format|
      format.html { render "l/news/index" }
      format.json { render json: @category }
    end
  end

end
