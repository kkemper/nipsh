json.array!(@bsdi_diets) do |bsdi_diet|
  json.extract! bsdi_diet, :id, :bsdi_report_id, :bsdi_breakfast, :bsdi_fruits, :bsdi_vegetables, :bsdi_grains, :bsdi_grain_emphasis, :bsdi_red_meat, :bsdi_lean_meat, :bsdi_dairy, :bsdi_dairy_emphasis, :bsdi_fats_and_oils, :bsdi_nutrition_status, :bsdi_nut_missing_values
  json.url bsdi_diet_url(bsdi_diet, format: :json)
end
