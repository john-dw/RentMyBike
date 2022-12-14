class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_bike, only: %i[show edit update destroy]

  def index
    @bikes = policy_scope(Bike)
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {bike: bike}),
        image_url: helpers.asset_url("logo-pin-map")
      }
    end
  end

  def show
    @booking = Booking.new
    authorize @bike
    @markers = [ {
      lat: @bike.latitude,
      lng: @bike.longitude,
      info_window: render_to_string(partial: "info_window", locals: {bike: @bike}),
      image_url: helpers.asset_url("logo-pin-map")
    }]

    # @marker = [{ lat: @bike.latitude, lng: @bike.longitude }]
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(params_bike)
    @bike.user = current_user
    authorize @bike
    if @bike.save!
      redirect_to bikes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @bike
  end

  def update
    authorize @bike
    @bike.update(params_bike)
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path, status: :see_other
    authorize @bike
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def params_bike
    params.require(:bike).permit(:category, :price_per_day, :location, :name, :description, :model, :photo, :user_id)
  end
end
