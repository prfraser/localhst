class ReviewsController < ApplicationController
  before_action :set_reviews
  before_action :set_review, only: [:destroy]
  before_action :check_user, only: [:destroy]


  # GET tours/1/reviews/new
  def new
    @review = @tour.reviews.build
  end

  # POST tours/1/reviews
  def create
    @review = @tour.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to(tour_path(@tour), notice: 'Review was successfully created.')
    else
      render action: 'new'
    end
  end

  # DELETE tours/1/reviews/1
  def destroy
    @review.destroy

    redirect_to(tour_path(@tour), notice: 'Review was successfully deleted.')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews
      @tour = Tour.find(params[:tour_id])
    end

    def set_review
      @review = @tour.reviews.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:content)
    end

    def check_user
      if current_user!= @review.user
        redirect_to root_url, alert: "Sorry. This review belongs to someone else."
      end
    end
end
