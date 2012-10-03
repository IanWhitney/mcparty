class Attendee < ActiveRecord::Base
  attr_accessible :name, :reason_id, :reason, :count
    
  belongs_to :reason
  
  accepts_nested_attributes_for :reason

  validates_presence_of :name, :count
  validates_numericality_of :count
  
  def count
    @count
  end
  
  def count=(x=1)
    @count = x.to_i
  end
end
