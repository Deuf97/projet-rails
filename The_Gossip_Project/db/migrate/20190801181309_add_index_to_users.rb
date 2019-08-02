class AddIndexToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city 
  end
end
