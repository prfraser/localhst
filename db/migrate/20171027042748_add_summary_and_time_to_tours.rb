class AddSummaryAndTimeToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :summary, :text
    add_column :tours, :est_time, :decimal
  end
end
