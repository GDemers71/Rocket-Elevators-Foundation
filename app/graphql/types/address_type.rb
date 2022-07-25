module Types
    class AddressType < Types::BaseObject
      field :id, ID, null: false
      field :type_of_address, String, null: false
      field :status, String, null: false
      field :entity, String, null: false
      field :number_and_street, String, null: false
      field :suite_or_apartment, String, null: false
      field :city, String, null: false
      field :postal_code, String, null: false
      field :country, String, null: false
      field :notes, String, null: false
      field :building, Types::BuildingType, null: false
      field :fact_intervention, Types::FactInterventionType, null: false
      field :customer, Types::CustomerType, null: false
    end
  end