class Request < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_name, lambda {|value| where(name: value) }
  scope :filter_by_phone_number, lambda {|value| where(phone_number: value) }
  scope :filter_by_email, lambda {|value| where(email: value) }
  scope :filter_by_company, lambda {|value| where(company: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }

  attr_accessible :email, :name, :phone_number, :company

  validates :email, presence: true
  validates :name, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  validates :company, presence: true
end
