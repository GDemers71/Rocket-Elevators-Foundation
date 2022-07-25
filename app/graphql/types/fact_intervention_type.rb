module Types
    class FactInterventionType < Types::BaseObject
      field :id, ID, null: false
      field :EmployeeID, ID, null: false
      field :BuildingID, ID, null: false
      field :BatteryID, ID, null: true
      field :ColumnID, ID, null: true
      field :ElevatorID, ID, null: true
      field :Intervention_started_at, String, null: false
      field :Intervention_ended_at, String, null: true
      field :Result, String, null: false
      field :Report, String, null: true
      field :Status, String, null: false
      field :address, String, null: false
      field :building, Types::BuildingType, null: false
      field :customer, Types::CustomerType, null: false

      def building
        Building.find(object.BuildingID)
      end
      
      def address
        building.address.number_and_street
      end

    end
  end
