class ChangeInterventionsFieldToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :customer_id, :integer
    change_column :interventions, :building_id, :integer
    change_column :interventions, :battery_id, :integer
    change_column :interventions, :column_id, :integer
    change_column :interventions, :elevator_id, :integer
    change_column :interventions, :employee_id, :integer
  end
end
