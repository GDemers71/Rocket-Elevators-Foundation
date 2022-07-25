class ChangeColumnNullBuilding < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:fact_interventions, :BuildingID, false)
  end
end
