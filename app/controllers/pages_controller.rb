class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # skip_after_action :verify_authorized, only: [:home]

  def home
    @bikes = Bike.last(6)
  end

  def dashboard
  end
end
