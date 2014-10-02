class Contact < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_message, lambda {|value| where(message: value) }
  scope :filter_by_phone, lambda {|value| where(phone: value) }
  scope :filter_by_email, lambda {|value| where(email: value) }
  scope :filter_by_name, lambda {|value| where(name: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :deleted_at, :email, :message, :name, :phone
end
