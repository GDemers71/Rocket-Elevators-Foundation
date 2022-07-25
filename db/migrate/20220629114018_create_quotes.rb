class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :building_type
      t.integer :number_of_apartments
      t.integer :number_of_floors
      t.integer :number_of_basement
      t.integer :number_of_businesses
      t.integer :number_of_parking_space
      t.integer :number_of_elevator_cages
      t.integer :number_of_seperate_tenant_companies
      t.integer :maximum_number_of_occupants_per_floor
      t.integer :hours_of_activity
      t.string :quality_of_elevator_service
      t.integer :unit_price_of_each_elevator
      t.integer :amount_of_elevator_needed
      t.integer :total_price_of_the_elevators
      t.integer :installation_fees
      t.integer :final_price

      t.timestamps
    end
  end
end
