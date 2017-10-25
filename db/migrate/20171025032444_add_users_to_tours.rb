class AddUsersToTours < ActiveRecord::Migration[5.1]
  def change
    add_reference :tours, :users, foreign_key: true
  end
end
