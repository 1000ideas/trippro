class Signup < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_apollo_pcc, lambda {|value| where(apollo_pcc: value) }
  scope :filter_by_amadeus_pcc, lambda {|value| where(amadeus_pcc: value) }
  scope :filter_by_worldspan_pcc, lambda {|value| where(worldspan_pcc: value) }
  scope :filter_by_galileo_pcc, lambda {|value| where(galileo_pcc: value) }
  scope :filter_by_sabre_pcc, lambda {|value| where(sabre_pcc: value) }
  scope :filter_by_asta, lambda {|value| where(asta: value) }
  scope :filter_by_affiliate, lambda {|value| where(affiliate: value) }
  scope :filter_by_host, lambda {|value| where(host: value) }
  scope :filter_by_hba, lambda {|value| where(hba: value) }
  scope :filter_by_business_type, lambda {|value| where(business_type: value) }
  scope :filter_by_webiste, lambda {|value| where(webiste: value) }
  scope :filter_by_clia, lambda {|value| where(clia: value) }
  scope :filter_by_ttt, lambda {|value| where(ttt: value) }
  scope :filter_by_iata, lambda {|value| where(iata: value) }
  scope :filter_by_arc, lambda {|value| where(arc: value) }
  scope :filter_by_diff_zip, lambda {|value| where(diff_zip: value) }
  scope :filter_by_diff_state, lambda {|value| where(diff_state: value) }
  scope :filter_by_diff_country, lambda {|value| where(diff_country: value) }
  scope :filter_by_diff_city, lambda {|value| where(diff_city: value) }
  scope :filter_by_diff_adress, lambda {|value| where(diff_adress: value) }
  scope :filter_by_zip, lambda {|value| where(zip: value) }
  scope :filter_by_state, lambda {|value| where(state: value) }
  scope :filter_by_country, lambda {|value| where(country: value) }
  scope :filter_by_city, lambda {|value| where(city: value) }
  scope :filter_by_adress, lambda {|value| where(adress: value) }
  scope :filter_by_president, lambda {|value| where(president: value) }
  scope :filter_by_agency_phone, lambda {|value| where(agency_phone: value) }
  scope :filter_by_agency_name, lambda {|value| where(agency_name: value) }
  scope :filter_by_referrer, lambda {|value| where(referrer: value) }
  scope :filter_by_fax_number, lambda {|value| where(fax_number: value) }
  scope :filter_by_job_title, lambda {|value| where(job_title: value) }
  scope :filter_by_retype_password, lambda {|value| where(retype_password: value) }
  scope :filter_by_password, lambda {|value| where(password: value) }
  scope :filter_by_email, lambda {|value| where(email: value) }
  scope :filter_by_phone_number, lambda {|value| where(phone_number: value) }
  scope :filter_by_last_name, lambda {|value| where(last_name: value) }
  scope :filter_by_first_name, lambda {|value| where(first_name: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :adress, :affiliate, :agency_name, :agency_phone, :amadeus_pcc, :apollo_pcc, :arc, :asta, :business_type, :city, :clia, :country, :deleted_at, :diff_adress, :diff_city, :diff_country, :diff_state, :diff_zip, :email, :fax_number, :first_name, :galileo_pcc, :hba, :host, :iata, :job_title, :last_name, :password, :phone_number, :president, :referrer, :retype_password, :sabre_pcc, :state, :ttt, :webiste, :worldspan_pcc, :zip, :terms_and_conditions, :consolidator
  attr_accessor :terms_and_conditions

  validates :email, presence: true
  validates :email, uniqueness: true, on: :create
  validates :terms_and_conditions, presence: true, acceptance: true
  validates :consolidator, presence: true

  CONSOLIDATORS = {
    'No preference' => '',
    'C&H International' => 'CH',
    'SkyLink US' => 'SU',
    'SkyLink Canada' => 'SC',
    'Transam Travel' => 'TA',
    'Hariworld' => 'HW'
  }
end
