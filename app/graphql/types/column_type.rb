module Types
    class ColumnType < Types::BaseObject
      field :id, ID, null: false
      field :column_type, String, null: false
      field :number_of_floors_served, Integer, null: false
      field :status, String, null: false
      field :information, String, null: false
      field :notes, String, null: false
      field :battery, Types::BatteryType, null: false
      field :elevator, Types::ElevatorType, null: false
    end
end