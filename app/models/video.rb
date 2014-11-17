class Video < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_page_name, lambda {|value| where(page_name: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :deleted_at, :page_name, :file, :cover_photo, :order

  has_attached_file :file
  validates_attachment_content_type :file, content_type: /\Avideo/
  validates_attachment_presence :file
  has_attached_file :cover_photo
  validates_attachment_content_type :cover_photo, content_type: /\Aimage/
  validates_attachment_presence :cover_photo
  validates :page_name, presence: true
end