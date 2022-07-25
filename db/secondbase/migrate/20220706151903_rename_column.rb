class RenameColumn < ActiveRecord::Migration[5.2]
  def up
    rename_column :fact_quotes, :Nb_Elevator, :nb_elevator
  end

  def down
  end
end
