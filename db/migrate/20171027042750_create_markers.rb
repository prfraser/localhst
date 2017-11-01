class CreateMarkers < ActiveRecord::Migration[5.1]
  def change
    create_table :markers do |t|
      t.string :address
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
