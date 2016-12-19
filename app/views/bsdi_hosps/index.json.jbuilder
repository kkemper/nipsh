json.array!(@bsdi_hosps) do |bsdi_hosp|
  json.extract! bsdi_hosp, :id, :bsdi_report_id, :bsdi_hospitalization
  json.url bsdi_hosp_url(bsdi_hosp, format: :json)
end
