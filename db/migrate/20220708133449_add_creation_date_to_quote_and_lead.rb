class AddCreationDateToQuoteAndLead < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :quote_created_at, :string
    add_column :leads, :lead_created_at, :string
  end
end
