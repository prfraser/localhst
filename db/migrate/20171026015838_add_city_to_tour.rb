class AddCityToTour < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :city, :string
  end
end
