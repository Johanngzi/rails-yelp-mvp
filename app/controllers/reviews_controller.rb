class ReviewsController < ApplicationController
  def new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@reviews)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def review
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
