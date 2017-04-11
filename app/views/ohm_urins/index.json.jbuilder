json.array!(@ohm_urins) do |ohm_urin|
  json.extract! ohm_urin, :id, :moddate, :ssn, :ohm_occblood, :ohm_uringlucose, :ohm_protein
  json.url ohm_urin_url(ohm_urin, format: :json)
end
