json.array!(@bsdi_smokings) do |bsdi_smoking|
  json.extract! bsdi_smoking, :id, :bsdi_report_id, :bsdi_smoking_status
  json.url bsdi_smoking_url(bsdi_smoking, format: :json)
end
