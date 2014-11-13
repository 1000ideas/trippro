class Webinar < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_link, lambda {|value| where(link: value) }
  scope :filter_by_when, lambda {|value| where(when: value) }
  scope :filter_by_language, lambda {|value| where(language: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :deleted_at, :language, :link, :when
  validates :language, :link, :when, presence: true 
end
