json.array!(@psych_demographics) do |psych_demographic|
  json.extract! psych_demographic, :id, :research_id, :gender, :age, :ethnicity
  json.url psych_demographic_url(psych_demographic, format: :json)
end
