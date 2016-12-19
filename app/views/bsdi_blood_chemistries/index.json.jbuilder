json.array!(@bsdi_blood_chemistries) do |bsdi_blood_chemistry|
  json.extract! bsdi_blood_chemistry, :id, :bsdi_report_id, :bsdi_bchem_date, :bsdi_cholesterol, :bsdi_high_cholesterol, :bsdi_cholesterol_meds, :bsdi_hdl, :bsdi_hdl_status, :bsdi_ldl, :bsdi_high_ldl, :bsdi_triglycerides, :bsdi_high_triglyceride, :bsdi_glucose, :bsdi_pre_diabetes, :bsdi_a1c, :bsdi_blood_chem_risk
  json.url bsdi_blood_chemistry_url(bsdi_blood_chemistry, format: :json)
end
