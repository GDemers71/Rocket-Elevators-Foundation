module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    
    field :all_addresses, [AddressType], null: false
    field :all_fact_elevators, [FactElevatorType], null: false
    
    field :all_leads, [LeadType], null: false
    field :all_elevators, [ElevatorType], null: false
    field :all_columns, [ColumnType], null: false
    field :all_batteries, [BatteryType], null: false
    field :all_quotes, [QuoteType], null: false
    field :all_employees, [EmployeeType], null: false
    field :all_users, [UserType], null: false
    field :all_customers, [CustomerType], null: false
    # this method is invoked, when `all_link` fields is being resolved

    field :all_fact_interventions_by_employee, [FactInterventionType], null: false do
      argument :employeeid , ID, required: true
    end

    field :all_fact_interventions, [FactInterventionType], null: false do
      argument :id , ID, required: true
    end

    field :all_buildings, [BuildingType], null: false do
      argument :id , ID, required: true
    end

    def all_buildings(id: nil)
      Building.where(id: id)
    end

    def all_fact_interventions(id: nil)
      FactIntervention.where(id: id)
    end

    def all_fact_interventions_by_employee(employeeid: nil)
      FactIntervention.where(EmployeeID: employeeid)
    end  
  

    def all_addresses
      Address.all
    end

    def all_fact_elevators
      FactElevator.all
    end


    def all_leads
       Lead.all
    end

    def all_elevators
      Elevator.all
    end

    def all_columns
      Column.all
    end

    def all_batteries
      Battery.all
    end

    def all_quotes
      Quote.all
    end

 

  end
end
