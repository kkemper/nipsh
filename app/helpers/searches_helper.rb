module SearchesHelper

  def display_results_header(count)
      "Your #{pluralize(count, 'result')}"
  end

end
