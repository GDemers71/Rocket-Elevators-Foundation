module Types
    class LeadType < Types::BaseObject
      field :id, ID, null: false
      field :full_name, String, null: false
      field :company_name, String, null: false
      field :email, String, null: false
      field :phone, String, null: false
      field :project_name, String, null: false
      field :project_description, String, null: false
      field :department, String, null: false
      field :message, String, null: false
      # field :file_attachment, Blob, null: false
      field :lead_created_at, GraphQL::Types::ISO8601DateTime, null: false
    end
end