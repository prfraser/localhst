require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @tour = tours(:one)
    @review = reviews(:one)
  end

  test "should get index" do
    get :index, params: { tour_id: @tour }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { tour_id: @tour }
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, params: { tour_id: @tour, review: @review.attributes }
    end

    assert_redirected_to tour_review_path(@tour, Review.last)
  end

  test "should show review" do
    get :show, params: { tour_id: @tour, id: @review }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { tour_id: @tour, id: @review }
    assert_response :success
  end

  test "should update review" do
    put :update, params: { tour_id: @tour, id: @review, review: @review.attributes }
    assert_redirected_to tour_review_path(@tour, Review.last)
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, params: { tour_id: @tour, id: @review }
    end

    assert_redirected_to tour_reviews_path(@tour)
  end
end
