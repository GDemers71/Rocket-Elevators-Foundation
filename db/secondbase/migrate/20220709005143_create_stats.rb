class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :monthly_contact
      t.integer :monthly_quotes
      t.integer :number_elevator
    end
  end
end
