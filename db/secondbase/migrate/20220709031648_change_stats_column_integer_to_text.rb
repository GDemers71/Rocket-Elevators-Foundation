class ChangeStatsColumnIntegerToText < ActiveRecord::Migration[5.2]
  def change
    change_column :stats, :monthly_contact, :text
    change_column :stats, :monthly_quotes, :text
  end
end
