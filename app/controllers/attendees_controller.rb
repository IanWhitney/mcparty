class AttendeesController < ApplicationController
  def create
    attendee = Attendee.new

    if params["attendee"]["reason"]["id"].empty?  
      attendee.build_reason(params["attendee"]["reason"])
      if !attendee.reason.valid?
        attendee.reason = Reason.first(:offset => rand(Reason.count))
      end
    else
      attendee.reason = Reason.find(params["attendee"]["reason"]["id"])
    end

    attendee.attributes = params["attendee"].select {|k,v| k != "reason"}

    if attendee.save
      (attendee.count - 1).times {|x| attendee.dup.save}
      file = "create"
    else
      file = "error"
    end

    @reasons = Reason.all
    @attendee = Attendee.new
    @attendee.build_reason
    
    respond_to do |format|
      format.js { render file}
    end    
  end
end