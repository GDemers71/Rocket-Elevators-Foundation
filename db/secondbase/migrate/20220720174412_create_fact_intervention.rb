class CreateFactIntervention < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_interventions do |t|
      t.integer :EmployeeID
      t.integer :BuildingID
      t.integer :BatteryID
      t.integer :ColumnID
      t.integer :ElevatorID
      t.datetime :Intervention_started_at
      t.datetime :Intervention_ended_at
      t.string :Result
      t.text :Report
      t.string :Status
    end
  end
end
