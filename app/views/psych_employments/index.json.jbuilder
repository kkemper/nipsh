json.array!(@psych_employments) do |psych_employment|
  json.extract! psych_employment, :id, :research_id, :department, :position, :prior_pub_saf_exprnce, :yrs_exprnce_pub_saf
  json.url psych_employment_url(psych_employment, format: :json)
end
