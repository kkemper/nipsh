json.array!(@fitness_reports) do |fitness_report|
  json.extract! fitness_report, :id, :fitness_report_id, :fitness_patient_id, :fitness_test_date
  json.url fitness_report_url(fitness_report, format: :json)
end
