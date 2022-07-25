class CreateFactElevator < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_elevators do |t|
      t.serial :serial_number
      t.date :date_of_commissioning
      t.integer :building_id
      t.integer :customer_id
      t.text :building_city
    end
  end
end
