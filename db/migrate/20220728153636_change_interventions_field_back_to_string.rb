class ChangeInterventionsFieldBackToString < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :customer_id, :string
    change_column :interventions, :building_id, :string
    change_column :interventions, :battery_id, :string
    change_column :interventions, :column_id, :string
    change_column :interventions, :elevator_id, :string
    change_column :interventions, :employee_id, :string
  end
end
