class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]
  before_action :set_booking, only: [:new, :create]
  before_action :set_user, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(params_review)
    @review.user = @user
    @review.booking = @booking
    authorize @review
    if @review.save!
      redirect_to dashboard_path(@review.booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_user
    @user = current_user
  end

  def params_review
    params.require(:review).permit(:user_id, :rating, :comment, :booking_id )
  end
end
