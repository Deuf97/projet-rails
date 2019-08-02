class AddIndexToDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :city
  add_column :dogs, :city, :integer
  add_index :dogs, :city
  end
end
    