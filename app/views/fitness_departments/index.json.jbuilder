json.array!(@fitness_departments) do |fitness_department|
  json.extract! fitness_department, :id, :fitness_dept_id, :fitness_dept_name
  json.url fitness_department_url(fitness_department, format: :json)
end
