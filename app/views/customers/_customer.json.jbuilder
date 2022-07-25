json.extract! customer, :id, :company_name, :company_headquarters_address, :company_contact_full_name, :company_contact_phone, :company_contact_email, :company_description, :service_technical_authority_full_name, :service_technical_authority_phone, :service_technical_manager_email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
