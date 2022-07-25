module Types
    class ElevatorType < Types::BaseObject
      field :id, ID, null: false
      field :serial_number, String, null: false
      field :model, String, null: false
      field :elevator_type, String, null: false
      field :status, String, null: false
      field :commissioning_date, String, null: false
      field :last_inspection_date, String, null: false
      field :inspection_certificate, String, null: false
      field :information, String, null: false
      field :notes, String, null: false
      field :column, Types::ColumnType, null: false
    end
end