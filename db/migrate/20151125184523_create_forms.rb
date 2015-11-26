class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :age
      t.string :work_experience
      t.string :highest_degree
      t.string :address
      t.string :city
      t.string :state
      t.string :contact_no
      t.string :country
      t.string :pincode
      t.date :birth_date
      t.string :type_job
      t.string :looking_job
      t.string :week_availability
      t.string :weekend_availability

      t.timestamps null: false
    end
  end
end
