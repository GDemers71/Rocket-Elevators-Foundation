json.extract! battery, :id, :type, :status, :employeeId, :commissioning_date, :last_inspection_date, :certificate_of_operation, :informations, :notes, :created_at, :updated_at
json.url battery_url(battery, format: :json)
