class Attendee < ActiveRecord::Base
  attr_accessible :name, :reason_id
  
  belongs_to :reason
end
