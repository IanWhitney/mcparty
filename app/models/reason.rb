class Reason < ActiveRecord::Base
  attr_accessible :name
  
  has_many :attendees
  
  validates_presence_of :name

end