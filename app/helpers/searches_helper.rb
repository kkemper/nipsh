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

  def condition_fields
    %w(fields condition).freeze
  end

  def value_fields
    %w(fields value).freeze
  end

  def display_distinct_label_and_check_box
    tag.section do
      check_box_tag(:distinct, '1', user_wants_distinct_results?, class: :cbx) +
      label_tag(:distinct, 'Return distinct records')
    end
  end

  def user_wants_distinct_results?
    params[:distinct].to_i == 1
  end

  def display_query_sql(users)
    tag.p('SQL:') + tag.code(users.to_sql)
  end

  def display_results_header(count)
      "Your #{pluralize(count, 'result')}"
  end
end
