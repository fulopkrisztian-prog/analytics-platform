json.extract! financial_record, :id, :project_id, :amount, :category, :description, :created_at, :updated_at
json.url financial_record_url(financial_record, format: :json)
