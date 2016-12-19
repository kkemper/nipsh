json.array!(@bsdi_blood_pressures) do |bsdi_blood_pressure|
  json.extract! bsdi_blood_pressure, :id, :bsdi_report_id, :bsdi_systolic, :bsdi_diastolic, :bsdi_bp_medicine
  json.url bsdi_blood_pressure_url(bsdi_blood_pressure, format: :json)
end
