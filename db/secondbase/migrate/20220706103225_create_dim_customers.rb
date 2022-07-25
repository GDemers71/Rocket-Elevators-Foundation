class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.date :creation_date
      t.text :company_name
      t.text :full_name
      t.text :company_contact_email
      t.integer :Nb_Elevator
      t.text :customer_city
    end
  end
end
