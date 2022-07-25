class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :type
      t.string :status
      t.integer :employeeId
      t.date :commissioning_date
      t.date :last_inspection_date
      t.string :certificate_of_operation
      t.text :informations
      t.text :notes

      t.timestamps
    end
  end
end
