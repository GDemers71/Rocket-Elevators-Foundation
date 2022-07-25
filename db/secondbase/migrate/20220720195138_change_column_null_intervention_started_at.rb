class ChangeColumnNullInterventionStartedAt < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:fact_interventions, :Intervention_started_at, false)
  end
end
