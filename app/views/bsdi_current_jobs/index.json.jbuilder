json.array!(@bsdi_current_jobs) do |bsdi_current_job|
  json.extract! bsdi_current_job, :id, :bsdi_report_id, :bsdi_organization, :bsdi_department, :bsdi_service, :bsdi_job_title
  json.url bsdi_current_job_url(bsdi_current_job, format: :json)
end
