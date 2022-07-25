class RenameColumn2 < ActiveRecord::Migration[5.2]
  def up
    rename_column :dim_customers, :Nb_Elevator, :nb_elevator
  end
 
  def down
  end
end
