class BsdiPatient < ActiveRecord::Base
  has_many :bsdi_reports
  has_many :bsdi_activities, through: :bsdi_reports
  has_many :bsdi_alcohol_barriers, through: :bsdi_reports
  has_many :bsdi_annuals, through: :bsdi_reports
  has_many :bsdi_blood_chemistries, through: :bsdi_reports
  has_many :bsdi_blood_pressures, through: :bsdi_reports
  has_many :bsdi_current_jobs, through: :bsdi_reports
  has_many :bsdi_diets, through: :bsdi_reports
  has_many :bsdi_diet_barriers, through: :bsdi_reports
  has_many :bsdi_diseases, through: :bsdi_reports
  has_many :bsdi_exercises, through: :bsdi_reports
  has_many :bsdi_histories, through: :bsdi_reports
  has_many :bsdi_hosps, through: :bsdi_reports
  has_many :bsdi_measurements, through: :bsdi_reports
  has_many :bsdi_psychs, through: :bsdi_reports
  has_many :bsdi_risks, through: :bsdi_reports
  has_many :bsdi_smokings, through: :bsdi_reports
  has_many :bsdi_smoking_barriers, through: :bsdi_reports
  has_many :bsdi_tobacco_and_alcohols, through: :bsdi_reports
  has_many :bsdi_weights, through: :bsdi_reports
  belongs_to :patient

private

def self.ransackable_attributes(auth_object = nil)
  %w(bsdi_lname bsdi_fname bsdi_birthdate bsdi_gender) + _ransackers.keys
end
end