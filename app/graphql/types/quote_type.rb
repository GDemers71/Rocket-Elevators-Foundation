module Types
    class QuoteType < Types::BaseObject
      field :id, ID, null: false
      field :building_type, String, null: false
      field :number_of_apartments, Integer, null: false
      field :number_of_floors, Integer, null: false
      field :number_of_basement, Integer, null: false
      field :number_of_businesses, Integer, null: false
      field :number_of_parking_space, Integer, null: false
      field :number_of_elevator_cages, Integer, null: false
      field :number_of_seperate_tenant_companies, Integer, null: false
      field :maximum_number_of_occupants_per_floor, Integer, null: false
      field :hours_of_activity, Integer, null: false
      field :quality_of_elevator_service, String, null: false
      field :unit_price_of_each_elevator, Integer, null: false
      field :amount_of_elevator_needed, Integer, null: false
      field :total_price_of_the_elevators, Integer, null: false
      field :installation_fees, Integer, null: false
      field :quote_email, String, null: false
      field :quote_created_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end