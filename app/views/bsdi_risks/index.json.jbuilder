json.array!(@bsdi_risks) do |bsdi_risk|
  json.extract! bsdi_risk, :id, :bsdi_report_id, :bsdi_risk_stratification, :bsdi_risk_factor_count, :bsdi_self_rating
  json.url bsdi_risk_url(bsdi_risk, format: :json)
end
