class Request < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid

  attr_accessible :email, :name, :phone, :company

  validates :email, presence: true
  validates :name, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :company, presence: true
end
