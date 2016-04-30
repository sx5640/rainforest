class ReviewsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_product

  def show
    @review = Review.find(params[:id])
  end

  def create
    sleep(3)
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    respond_to do |format|
      if @review.save
        format.html { redirect_to product_path(@product), notice: "review created successfully"}
        format.js {}
      else
        format.html {render product_path(@product), notice: "review was not created"}
        format.js {}
      end
    end
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

end
