class ChangeNameTotalPriceOfTheElevatorsInQuotes < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :total_price_of_the_elevators, :float
    change_column :quotes, :installation_fees, :float
    change_column :quotes, :final_price, :float
  end
end
