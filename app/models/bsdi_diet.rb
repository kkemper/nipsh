class BsdiDiet < ActiveRecord::Base
  belongs_to :bsdi_report

  private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_breakfast bsdi_fruits bsdi_vegetables bsdi_grains bsdi_grain_emphasis bsdi_red_meat bsdi_lean_meat bsdi_dairy bsdi_dairy_emphasis bsdi_fats_and_oils bsdi_nutrition_status bsdi_nut_missing_values) + _ransackers.keys
  end
end
