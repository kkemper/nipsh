json.array!(@bsdi_alcohol_barriers) do |bsdi_alcohol_barrier|
  json.extract! bsdi_alcohol_barrier, :id, :bsdi_report_id, :bsdi_rfc_alcohol, :bsdi_alcohol_barrier_knowledge, :bsdi_alcohol_barrier_temptation, :bsdi_alcohol_barrier_friends, :bsdi_alcohol_barrier_perception, :bsdi_alcohol_barrier_stress, :bsdi_alcohol_barrier_other
  json.url bsdi_alcohol_barrier_url(bsdi_alcohol_barrier, format: :json)
end
