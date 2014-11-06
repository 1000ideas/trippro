class SignupsController < ApplicationController

  def index
    authorize! :read, Signup
    @signups = Signup
      .paginate page: params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @signups}
    end
  end

  def show
    @signup = Signup.find(params[:id])
    authorize! :read, @signup

    respond_to do |format|
      format.html
      format.json { render json: @signup }
    end
  end

end
