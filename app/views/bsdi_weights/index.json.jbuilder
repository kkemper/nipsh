json.array!(@bsdi_weights) do |bsdi_weight|
  json.extract! bsdi_weight, :id, :bsdi_report_id, :rfc_weight, :bsdi_weight_barrier_knowledge, :bsdi_weight_barrier_access, :bsdi_weight_barrier_social, :bsdi_weight_barrier_exercise, :bsdi_weight_barrier_stress
  json.url bsdi_weight_url(bsdi_weight, format: :json)
end
