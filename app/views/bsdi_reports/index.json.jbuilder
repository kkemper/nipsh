json.array!(@bsdi_reports) do |bsdi_report|
  json.extract! bsdi_report, :id, :bsdi_patient_id, :bsdi_date, :bsdi_newest, :bsdi_valid_year, :bsdi_user_defined_flag, :bsdi_staff_entry
  json.url bsdi_report_url(bsdi_report, format: :json)
end
