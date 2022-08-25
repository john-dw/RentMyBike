class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # skip_after_action :verify_authorized, only: [:home]

  def home
    @bikes = Bike.last(6)
  end

  def dashboard
    @requests = current_user.bikes.map(&:bookings).flatten
    @requests.each do |request|
      if request.end_date < Date.today && request.status == "accepted"
        request.status = "passed"
        request.save!
      end
    end
  end
end
