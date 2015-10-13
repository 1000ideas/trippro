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
        @response = RequestHandler.send_request(hash_for_request(@signup), 'signUp')
        format.js
      else
        @errors = @signup.errors.full_messages
        format.html {render action: "new"}
        format.js
      end
    end
  end

  def region_options
    render partial: 'region_select', locals: { parent_region: params[:parent_region] }
  end

  private

  def hash_for_request(obj)
    {
      "FirstName" => obj.first_name,
      "LastName" => obj.last_name,
      "JobTitle" => obj.job_title,
      "PhoneNumber" => obj.phone_number,
      "FaxNumber" => obj.fax_number,
      "Email" => obj.email,
      "Password" => obj.password,
      "RetypePassword" => obj.retype_password,
      "Referrer" => obj.referrer,
      "AgencyName" => obj.agency_name,
      "AgencyPresident" => obj.president,
      "AgencyPhone" => obj.agency_phone,
      "AgencyStreetAddress" => obj.adress,
      "AgencyCity" => obj.city,
      "AgencyPostalCode" => obj.zip,
      "AgencyStateCode" => obj.state,
      "AgencyCountryCode" => obj.country,
      "PreferredConsolidator" => obj.consolidator,
      "MailingStreetAddress" => obj.diff_adress,
      "MailingCity" => obj.diff_city,
      "MailingZip" => obj.diff_zip,
      "MailingStateCode" => obj.diff_state,
      "MailingCountryCode" => obj.diff_country,
      "Arc" => obj.arc,
      "Iata" => obj.iata,
      "Clia" => obj.clia,
      "AgencyUrl" => obj.webiste,
      "BusinessType" => obj.business_type,
      "Other" => obj.ttt,
      "Hba" => obj.hba,
      "Host" => obj.host,
      "Consortium" => obj.affiliate,
      "Asta" => obj.asta,
      "SabreIpcc" => obj.sabre_pcc,
      "GalileoIpcc" => obj.galileo_pcc,
      "WorldspanIpcc" => obj.worldspan_pcc,
      "AmadeusIpcc" => obj.amadeus_pcc,
      "ApolloIpcc" => obj.apollo_pcc
    }
  end
end
