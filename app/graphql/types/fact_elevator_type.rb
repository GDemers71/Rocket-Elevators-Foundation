module Types
    class FactElevatorType < Types::BaseObject
      field :id, ID, null: false
      field :serial_number, Int, null: false
      field :date_of_commissioning, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
