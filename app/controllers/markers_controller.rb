class MarkersController < ApplicationController
  before_action :set_markers
  before_action :set_marker, only: [:destroy]
  before_action :check_user, only: [:destroy]

  # GET /markers/new
  def new
    @marker = @tour.markers.build
  end

  # POST /markers
  # POST /markers.json
  def create
    @marker = @tour.markers.build(marker_params)
    @marker.user_id = current_user.id
    if @marker.save
      redirect_to(tour_path(@tour), notice: 'Marker was successfully created.')
    else
      render action: 'new'
    end
  end

  # DELETE /markers/1
  # DELETE /markers/1.json
  def destroy
    @marker.destroy

    redirect_to(tour_path(@tour), notice: 'Marker was successfully deleted.')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_markers
      @tour = Tour.find(params[:tour_id])
    end

    def set_marker
      @marker = Marker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marker_params
      params.require(:marker).permit(:name, :address)
    end


    def check_user
      if current_user!= @review.user
        redirect_to root_url, alert: "Sorry. This review belongs to someone else."
      end
    end
end
