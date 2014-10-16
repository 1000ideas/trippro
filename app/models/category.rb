class Category < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_name, lambda {|value| where(name: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :deleted_at, :name
  has_many :news
end
