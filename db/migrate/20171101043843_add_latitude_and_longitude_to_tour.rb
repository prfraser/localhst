class AddLatitudeAndLongitudeToTour < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :latitude, :float
    add_column :tours, :longitude, :float
  end
end
