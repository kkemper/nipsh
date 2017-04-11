json.array!(@ohm_hearings) do |ohm_hearing|
  json.extract! ohm_hearing, :id, :moddate, :ssn, :ohm_L500k, :ohm_R500k, :ohm_l1k, :ohm_r1k, :ohm_l2k, :ohm_r2k, :ohm_l3k, :ohm_r3k, :ohm_l4k, :ohm_r4k, :ohm_l6k, :ohm_r6k, :ohm_l8k, :ohm_r8k
  json.url ohm_hearing_url(ohm_hearing, format: :json)
end
