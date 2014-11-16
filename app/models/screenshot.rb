class Screenshot < ActiveRecord::Base
  include PublicActivity::Common
  acts_as_paranoid
  scope :filter_by_order, lambda {|value| where(order: value) }
  scope :filter_by_description, lambda {|value| where(description: value) }
  scope :filter_by_created_after, lambda {|date| where("`created_at` > ?", Date.parse(date)) }
  scope :filter_by_created_before, lambda {|date| where("`created_at` < ?", Date.parse(date)) }
  attr_accessible :deleted_at, :description, :order, :file

  has_attached_file :file, styles: { display: "532x336#" }
  validates_attachment_content_type :file, content_type: /\Aimage/
  validates_attachment_presence :file
  validates :description, presence: true
end
