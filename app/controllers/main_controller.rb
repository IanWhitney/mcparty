class MainController < ApplicationController
  def index
    @reasons = Reason.all
    @attendee = Attendee.new
    @attendee.build_reason
  end
end
