class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :author
      t.string :customer_id
      t.string :building_id
      t.string :battery_id
      t.string :column_id
      t.string :elevator_id
      t.string :employee_id
      t.datetime :start
      t.datetime :end
      t.string :result
      t.text :report
      t.string :status

      t.timestamps
    end
  end
end
