class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_bike, only: %i[show edit update]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(params_bike)
    @bike.user = current_user
    if @bike.save!
      redirect_to bikes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @bike.update(params_bike)
    redirect_to bike_path(@bike)
  end

  def destroy
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def params_bike
    params.require(:bike).permit(:category, :price_per_day, :location, :name, :description, :model, :photo, :user_id)
  end
end
