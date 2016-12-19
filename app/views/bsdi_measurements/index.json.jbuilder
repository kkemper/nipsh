json.array!(@bsdi_measurements) do |bsdi_measurement|
  json.extract! bsdi_measurement, :id, :bsdi_weight, :bsdi_height, :bsdi_waist, :bsdi_waist_risk, :bsdi_hips, :bsdi_weight_belief, :bsdi_bmi, :bsdi_bmi_category, :bsdi_high_risk_bmi, :bsdi_hypertrophic, :bsdi_disabled
  json.url bsdi_measurement_url(bsdi_measurement, format: :json)
end
