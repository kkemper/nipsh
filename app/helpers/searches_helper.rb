module SearchesHelper
#Uses different routing method for advanced search to avoid overloading the query submission.
  def action
    if action_name == 'advanced_search'
      :post
    else
      :get
    end
  end

#How to switch between Simple and Advanced Search
  def link_to_toggle_search_modes
    if action_name == 'advanced_search'
      link_to('Go to Simple mode', users_path)
    else
      link_to('Go to Advanced mode', advanced_search_users_path)
    end
  end

  def display_query_sql(users)
    tag.p('SQL:') + tag.code(users.to_sql)
  end

  def display_results_header(count)
      "Your #{pluralize(count, 'result')}"
  end
end
