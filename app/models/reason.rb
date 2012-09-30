class Reason < ActiveRecord::Base
  attr_accessible :name
  
  has_many :attendees
end
