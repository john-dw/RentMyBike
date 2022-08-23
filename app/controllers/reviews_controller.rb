class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create, :destroy]
  before_action :set_booking, only: [:new, :create, :destroy]
  before_action :set_bike, only: [:new, :create, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.user = @user
    @review.booking = @booking
    @review.bike = @bike
    if @review.save!
      redirect_to bike_booking_review_path(@review)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @review.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def params_review
    params.require(:review).permit(:user_id, :rating, :comment, :booking_id)
  end
end
