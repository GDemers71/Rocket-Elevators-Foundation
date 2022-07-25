class ChangeColumnNullResult < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:fact_interventions, :Result, false)
  end
end
