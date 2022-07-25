class AddCompagnyNameToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :compagny_name, :string
  end
end
