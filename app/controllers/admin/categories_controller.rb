class Admin::CategoriesController < ApplicationController

  layout "l/admin"

  def index
    authorize! :manage, Category
    @categories = Category
      .filter(params[:filter])

    @categories = @categories.order(sort_order) if sort_results?
    @categories = @categories.all.paginate page: params[:page]

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @category = Category.new
    authorize! :create, @category

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @category = Category.find(params[:id])
    authorize! :update, @category

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @category = Category.new(params[:category])
    authorize! :create, @category

    respond_to do |format|
      if @category.save
        @category.create_activity :create, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_categories_path ) }

      else
        format.html { render action: "new" }
      end
      format.js
    end
  end

  def update
    @category = Category.find(params[:id])
    authorize! :update, @category

    respond_to do |format|
      if @category.update_attributes(params[:category])
        @category.create_activity :update, owner: current_user
        flash.notice =  info(:success)
        format.html { redirect_to(admin_categories_path ) }
      else
        format.html { render action: "edit" }
      end
      format.js
    end
  end

  def destroy
    @category = Category.find(params[:id])
    authorize! :destroy, @category
    @category.destroy
    @category.create_activity :destroy, owner: current_user

    respond_to do |format|
      format.html { redirect_to :back, notice: info(:success) }
      format.any  { head :ok }
    end
  end

  def selection
    authorize! :manage, Category
    selection = {
      action: params[:bulk_action],
      ids: params[:ids]
    }
    selection = Category.selection_object(selection)

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
