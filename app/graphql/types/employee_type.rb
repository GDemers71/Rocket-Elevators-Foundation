module Types
    class EmployeeType < Types::BaseObject
      field :id, ID, null: false
      field :first_name, String, null: false
      field :last_name, String, null: false
      field :title, String, null: false
      field :email, String, null: false
    #   field :user, String, null: false
      field :battery, Types::BatteryType, null: false
    end
  end