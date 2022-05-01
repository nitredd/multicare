json.extract! patient, :id, :name, :phone, :created_at, :updated_at
json.url patient_url(patient, format: :json)
