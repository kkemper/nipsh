module PatientsHelper
  def display_query_sql(patients)
    tag.p('SQL:') + tag.code(patients.to_sql)
  end

    def display_results_header(count)
    if count > results_limit
      "Your first #{results_limit} results out of #{count} total"
    else
      "Your #{pluralize(count, 'result')}"
    end
  end
end
