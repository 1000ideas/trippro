class Content < ActiveRecord::Base
  self.primary_key = :id
  
  attr_accessible :id, :value

  def self.set!(id, val)
    c = self.where(id: id).first || self.new(id: id)
    c.value = val
    c.save!
  end
end