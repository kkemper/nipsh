json.array!(@psych_reports) do |psych_report|
  json.extract! psych_report, :id, :research_id, :grade, :examiner, :date_of_evaluation, :gave_consent
  json.url psych_report_url(psych_report, format: :json)
end
