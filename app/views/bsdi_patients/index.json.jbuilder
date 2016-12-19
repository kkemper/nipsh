json.array!(@bsdi_patients) do |bsdi_patient|
  json.extract! bsdi_patient, :id, :bsdi_id, :bsdi_psmid, :bsdi_fname, :bsdi_lname, :bsdi_gender, :bsdi_birthdate, :bsdi_previous_id
  json.url bsdi_patient_url(bsdi_patient, format: :json)
end
