class AddUserToMarker < ActiveRecord::Migration[5.1]
  def change
    add_reference :markers, :user, foreign_key: true
  end
end
