class BsdiAnnual < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_see_doctor bsdi_see_dentist bsdi_check_bp bsdi_check_chol bsdi_colonoscopy bsdi_papsmear bsdi_mammogram bsdi_prostate bsdi_breast_exam bsdi_testicular_exam bsdi_flu_shot bsdi_physician_visits bsdi_hospital_visits bsdi_emergency_room bsdi_high_absenteeism bsdi_seat_belt) + _ransackers.keys
  end
end
