class ChangeColumnInTours < ActiveRecord::Migration[5.1]
  def change 
  	change_table :tours do |t|
	  	t.rename :users_id, :user_id
	  end
  end
end
