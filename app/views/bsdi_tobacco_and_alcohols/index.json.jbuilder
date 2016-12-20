json.array!(@bsdi_tobacco_and_alcohols) do |bsdi_tobacco_and_alcohol|
  json.extract! bsdi_tobacco_and_alcohol, :id, :bsdi_report_id, :bsdi_tobacco, :bsdi_alcohol, :bsdi_binge_drinking, :bsdi_medication_relax
  json.url bsdi_tobacco_and_alcohol_url(bsdi_tobacco_and_alcohol, format: :json)
end
