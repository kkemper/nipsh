json.array!(@bsdi_psyches) do |bsdi_psych|
  json.extract! bsdi_psych, :id, :bsdi_report_id, :bsdi_psych_overall, :bsdi_life_satisfaction, :bsdi_satisfaction_job, :bsdi_stress_level, :bsdi_psych_stress_effect, :bsdi_sleep, :bsdi_insufficient_sleep, :bsdi_friends, :bsdi_social_ties, :bsdi_spirit_health
  json.url bsdi_psych_url(bsdi_psych, format: :json)
end
