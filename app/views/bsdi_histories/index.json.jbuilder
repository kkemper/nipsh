json.array!(@bsdi_histories) do |bsdi_history|
  json.extract! bsdi_history, :id, :bsdi_report_id, :bsdi_family_stroke, :bsdi_family_cancer, :bsdi_family_diabetes, :bsdi_family_cholesterol, :bsdi_family_hypertension, :bsdi_family_heart_only
  json.url bsdi_history_url(bsdi_history, format: :json)
end
