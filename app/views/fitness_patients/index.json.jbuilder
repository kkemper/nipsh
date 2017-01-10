json.array!(@fitness_patients) do |fitness_patient|
  json.extract! fitness_patient, :id, :fitness_patient_id, :fitness_lname, :fitness_fname, :fitness_dept, :fitness_gender
  json.url fitness_patient_url(fitness_patient, format: :json)
end
