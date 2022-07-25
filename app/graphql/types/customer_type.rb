module Types
    class CustomerType < Types::BaseObject
      field :id, ID, null: false
      field :company_name, String, null: false
      field :company_headquarters_address, String, null: false
      field :company_contact_full_name, String, null: false
      field :company_contact_phone, String, null: false
      field :company_contact_email, String, null: false
      field :company_description, String, null: false
      field :service_technical_authority_full_name, String, null: false
      field :service_technical_authority_phone, String, null: false
      field :service_technical_authority_email, String, null: false
      field :building, Types::BuildingType, null: false
      field :fact_intervention, Types::FactInterventionType, null: false
      field :address, Types::AddressType, null: false
    #   field :user, String, null: false
    end
  end