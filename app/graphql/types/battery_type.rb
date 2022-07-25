module Types
    class BatteryType < Types::BaseObject
      field :id, ID, null: false
      field :batterie_type, String, null: false
      field :status, String, null: false
      field :employeeId, Integer, null: false
      field :commissioning_date, String, null: false
      field :last_inspection_date, String, null: false
      field :certificate_of_operation, String, null: false
      field :informations, String, null: false
      field :notes, String, null: false
      field :building, Types::BuildingType, null: false
      field :employee, Types::EmployeeType, null: false
      field :column, Types::ColumnType, null: false
    end
end