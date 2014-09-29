class Content < ActiveRecord::Base
  self.primary_key = :id
  
  attr_accessible :id, :content

  def self.set!(id, value)
    c = self.where(id: id).first || self.new(id: id)
    c.content = value
    c.save!
  end
end