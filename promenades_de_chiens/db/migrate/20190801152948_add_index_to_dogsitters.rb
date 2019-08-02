class AddIndexToDogsitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogsitters, :city
    add_column :dogsitters, :city, :integer
    add_index :dogsitters, :city
  end
end
