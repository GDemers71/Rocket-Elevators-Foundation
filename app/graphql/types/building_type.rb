module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :building_administrator_email, String, null: false
    field :building_administrator_full_name, String, null: false
    field :address, Types::AddressType, null: false
    field :intervention, [Types::FactInterventionType], null: false
    field :customer_id, ID, null: false
    field :customer, Types::CustomerType, null: false
    field :building_details, [Types::BuildingDetailType], null: false
  end
end

def intervention
  FactIntervention.where(buildingid: object.id)
end

def customer
  Customer.where(id: object.customerID )
end  