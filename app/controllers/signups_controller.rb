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
      format.html {render layout: "l/admin"}
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
      if @signup.valid?
        signup_request = render partial: 'signups/create', formats: [:json]
        @response = RequestHandler.send_request(signup_request.first, 'signUp')
      else
        @errors = @signup.errors.full_messages
        format.html {render action: "new"}
        format.js
        flash.notice = info(:error)
      end
    end
  end
end
