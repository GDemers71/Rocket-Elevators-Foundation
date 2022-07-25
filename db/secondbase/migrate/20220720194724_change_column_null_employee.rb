class ChangeColumnNullEmployee < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:fact_interventions, :EmployeeID, false)
  end
end
