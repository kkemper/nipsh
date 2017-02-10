json.array!(@mds_patients) do |mds_patient|
  json.extract! mds_patient, :id, :lname, :fname, :mname, :gender, :employeeid, :ssn
  json.url mds_patient_url(mds_patient, format: :json)
end
