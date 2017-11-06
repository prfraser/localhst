class ProfileController < ApplicationController
  def show
  	@user = User.find(params[:user])
  	@tours = @user.tours
  	@stripe_user_id = current_user.stripe_user_id
  end
end
