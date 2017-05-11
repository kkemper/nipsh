class BsdiReport < ActiveRecord::Base
  belongs_to :bsdi_patient
  has_one :bsdi_activity
  has_one :bsdi_alcohol_barrier
  has_one :bsdi_annual
  has_one :bsdi_blood_chemistry
  has_one :bsdi_blood_pressure
  has_one :bsdi_current_job
  has_one :bsdi_diet
  has_one :bsdi_diet_barrier
  has_one :bsdi_disease
  has_one :bsdi_exercise
  has_one :bsdi_history
  has_one :bsdi_hosp
  has_one :bsdi_measurement
  has_one :bsdi_psych
  has_one :bsdi_risk
  has_one :bsdi_smoking
  has_one :bsdi_smoking_barrier
  has_one :bsdi_tobacco_and_alcohol
  has_one :bsdi_weight

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_date) + _ransackers.keys
  end
end
