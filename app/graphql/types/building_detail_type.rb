module Types
    class BuildingDetailType < Types::BaseObject
      field :id, ID, null: false
      field :key, String, null: false
      field :value, String, null: false
      field :building_id, ID, null: false
      field :created_at, String, null: false
      field :updated_at, String, null: false
    end
  end