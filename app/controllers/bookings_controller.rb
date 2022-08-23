class BookingsController < ApplicationController
  before_action :set_bike, only: [:new, :create]
  before_action :set_user, only: [:new, :create]
  before_action :set_booking, only: [:accept, :reject]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.bike = @bike
    @booking.user = @user
    @booking.status = "pending"
    if @booking.save!
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking.status = "accepted"
  end

  def reject
    @booking.status = "rejected"
  end

  private

  def params_booking
    params.require(:booking).permit(:user_id, :start_date, :end_date, :status, :bike_id)
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def set_user
    @user = current_user
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
