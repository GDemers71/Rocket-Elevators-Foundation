class AddFieldToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :quote_email, :string
  end
end
