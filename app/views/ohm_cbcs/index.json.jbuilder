json.array!(@ohm_cbcs) do |ohm_cbc|
  json.extract! ohm_cbc, :id, :moddate, :ssn, :ohm_wbc, :ohm_hemo, :ohm_hema
  json.url ohm_cbc_url(ohm_cbc, format: :json)
end
