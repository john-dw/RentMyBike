class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def set_review
    Review.find(params[:id])
  end
end
