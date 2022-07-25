class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :company_headquarters_address
      t.string :company_contact_full_name
      t.string :company_contact_phone
      t.string :company_contact_email
      t.string :company_description
      t.string :service_technical_authority_full_name
      t.string :service_technical_authority_phone
      t.string :service_technical_manager_email

      t.timestamps
    end
  end
end
