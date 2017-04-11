json.array!(@ohm_immunes) do |ohm_immune|
  json.extract! ohm_immune, :id, :moddate, :ssn, :ohm_immune_type, :ohm_immune_note
  json.url ohm_immune_url(ohm_immune, format: :json)
end
