class MainController < ApplicationController
  def index
    @reasons = Reason.all
  end
end
