class AddNameToMarker < ActiveRecord::Migration[5.1]
  def change
    add_column :markers, :name, :string
  end
end
