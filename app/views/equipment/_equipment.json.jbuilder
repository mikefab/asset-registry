json.extract! equipment, :id, :description, :make_manufacturer, :country_of_origin, :serial_number, :quantity, :acquisition_date, :acquisition_cost, :estimated_useful_years, :year_commissioned, :operational, :out_of_order, :operational_with_issues, :unverifiable, :department_location, :total, :remarks, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
