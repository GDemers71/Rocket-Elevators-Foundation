class CreateFactQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_quotes do |t|
      t.date :creation_date
      t.text :company_name
      t.text :quote_email
      t.integer :Nb_Elevator
    end
  end
end
