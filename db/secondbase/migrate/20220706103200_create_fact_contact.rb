class CreateFactContact < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_contacts do |t|
      t.date :creation_date
      t.text :company_name
      t.text :email
      t.text :project_name
    end
  end
end
