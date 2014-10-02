class Testimonial < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_position, lambda {|value| where(position: value) }
  scope :filter_by_name, lambda {|value| where(name: value) }
  scope :filter_by_content, lambda {|value| where(content: value) }
  scope :filter_by_photo_file_name, lambda {|value| where(photo_file_name: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  has_attached_file :photo
  validates_attachment :photo, content_type: {content_type: /.*/}
  attr_accessible :content, :deleted_at, :name, :photo, :position
end
