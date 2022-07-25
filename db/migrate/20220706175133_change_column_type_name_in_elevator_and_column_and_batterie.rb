class ChangeColumnTypeNameInElevatorAndColumnAndBatterie < ActiveRecord::Migration[5.2]
  def change
    rename_column :elevators, :type, :elevator_type
    rename_column :columns, :type, :column_type
    rename_column :batteries, :type, :batterie_type
  end
end
