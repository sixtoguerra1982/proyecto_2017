class AddcookToUsers < ActiveRecord::Migration[5.1]
  
  def change
  	add_reference :cooks, :user, index: true, foreign_key: true
  end


end
