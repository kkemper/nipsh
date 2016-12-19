json.array!(@bsdi_exercises) do |bsdi_exercise|
  json.extract! bsdi_exercise, :id, :bsdi_report_id, :bsdi_exercise, :bsdi_how_long_active, :bsdi_sedentary, :bsdi_hip_knee_problems, :bsdi_other_reason_no_exercise, :bsdi_activity_minutes_vigorous, :bsdi_activity_minutes_moderate, :bsdi_physical_inactivity
  json.url bsdi_exercise_url(bsdi_exercise, format: :json)
end
