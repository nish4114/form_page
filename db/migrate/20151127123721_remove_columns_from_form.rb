class RemoveColumnsFromForm < ActiveRecord::Migration
  def change
    remove_column :forms, :city
    remove_column :forms, :state
    remove_column :forms, :country
    remove_column :forms, :pincode
    remove_column :forms, :birth_date
  end
end
