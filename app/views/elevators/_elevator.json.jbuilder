json.extract! elevator, :id, :serial_number, :model, :type, :status, :commissioning_date, :last_inspection_date, :inspection_certificate, :information, :notes, :created_at, :updated_at
json.url elevator_url(elevator, format: :json)
