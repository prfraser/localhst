class ProfileController < ApplicationController
  def show
  	@user = User.find(params[:user])
  	@tours = @user.tours
  end
end
