json.array!(@bsdi_diet_barriers) do |bsdi_diet_barrier|
  json.extract! bsdi_diet_barrier, :id, :bsdi_report_id, :bsdi_rfc_diet, :bsdi_diet_barrier_unfamililar, :bsdi_diet_barrier_time, :bsdi_diet_barrier_people, :bsdi_diet_barrier_taste, :bsdi_diet_barrier_other, :bsdi_diet_barrier_expense
  json.url bsdi_diet_barrier_url(bsdi_diet_barrier, format: :json)
end
