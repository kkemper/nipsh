json.array!(@bsdi_activities) do |bsdi_activity|
  json.extract! bsdi_activity, :id, :bsdi_report_id, :bsdi_rfc_activity, :bsdi_active_barrier_time, :bsdi_active_barrier_people, :bsdi_active_barrier_unfamiliar, :bsdi_active_barrier_resources, :bsdi_active_barrier_unpleasant, :bsdi_active_barrier_medical_worry, :bsdi_active_barrier_intimidating, :bsdi_active_barrier_embarrassed, :bsdi_active_barrier_other, :bsdi_active_barrier_injury
  json.url bsdi_activity_url(bsdi_activity, format: :json)
end
