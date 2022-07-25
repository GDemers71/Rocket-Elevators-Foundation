class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.string :serial_number
      t.string :model
      t.string :type
      t.string :status
      t.date :commissioning_date
      t.date :last_inspection_date
      t.string :inspection_certificate
      t.text :information
      t.text :notes

      t.timestamps
    end
  end
end
