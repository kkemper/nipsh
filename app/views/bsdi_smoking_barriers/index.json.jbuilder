json.array!(@bsdi_smoking_barriers) do |bsdi_smoking_barrier|
  json.extract! bsdi_smoking_barrier, :id, :bsdi_report_id, :bsdi_rfc_smoking, :bsdi_smoke_barrier_knowledge, :bsdi_smoke_barrier_temptation, :bsdi_smoke_barrier_friends, :bsdi_smoke_barrier_weight, :bsdi_smoke_barrier_stress, :bsdi_smoke_barrier_other
  json.url bsdi_smoking_barrier_url(bsdi_smoking_barrier, format: :json)
end
