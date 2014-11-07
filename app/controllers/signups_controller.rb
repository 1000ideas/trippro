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

  def new
    @signup = Signup.new
    authorize! :create, @signup

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @signup = Signup.new(params[:signup])
    authorize! :create, @signup

    respond_to do |format|
      if @signup.save

        flash.notice = info(:success)
        format.html {render action: "new"}
      else
        format.html {render action: "new"}
        flash.notice = info(:error)
      end
      format.js
    end
  end
end
