class RechangeNameTotalPriceOfTheElevatorsInQuotes < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :total_price_of_the_elevators, :text
    change_column :quotes, :installation_fees, :text
    change_column :quotes, :final_price, :text
  end
end
