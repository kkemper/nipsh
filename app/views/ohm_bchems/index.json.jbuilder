json.array!(@ohm_bchems) do |ohm_bchem|
  json.extract! ohm_bchem, :id, :moddate, :ssn, :ohm_sgot, :ohm_sgpt, :ohm_trigly, :ohm_chol, :ohm_ldl, :ohm_ldh, :ohm_hdl, :ohm_glucose, :ohm_bun, :ohm_creatinine
  json.url ohm_bchem_url(ohm_bchem, format: :json)
end
