class Patient < ActiveRecord::Base
	has_one :mds_patient
  has_one :bsdi_patient
  has_many :bsdi_reports, through: :bsdi_patient
  has_many :mds_reports, through: :mds_patient
  has_many :bsdi_blood_pressures, through: :bsdi_reports
  has_many :bsdi_blood_chemistries, through: :bsdi_reports
  has_many :bsdi_activities, through: :bsdi_reports
  has_many :bsdi_alcohol_barriers, through: :bsdi_reports
  has_many :bsdi_annuals, through: :bsdi_reports
  has_many :bsdi_smokings, through: :bsdi_reports
  has_many :bsdi_current_jobs, through: :bsdi_reports
  has_many :bsdi_diet_barriers, through: :bsdi_reports
  has_many :bsdi_diets, through: :bsdi_reports
  has_many :bsdi_diseases, through: :bsdi_reports
  has_many :bsdi_exercises, through: :bsdi_reports
  has_many :bsdi_histories, through: :bsdi_reports
  has_many :bsdi_hosps, through: :bsdi_reports
  has_many :bsdi_measurements, through: :bsdi_reports
  has_many :bsdi_risks, through: :bsdi_reports
  has_many :bsdi_psyches, through: :bsdi_reports
  has_many :bsdi_smoking_barriers, through: :bsdi_reports
  has_many :bsdi_tobacco_and_alcohols, through: :bsdi_reports
  has_many :bsdi_weights, through: :bsdi_reports
  has_many :lab_data, through: :mds_patient
  has_many :physical_exams, through: :mds_patient
  has_many :fitness_tests, through: :mds_reports
  has_many :cancer_screenings, through: :mds_reports
  has_many :current_jobs, through: :mds_reports
  has_many :demographics, through: :mds_patient
  has_many :duties, through: :mds_reports
  has_many :family_histories, through: :mds_reports
  has_many :health_conditions, through: :mds_reports
  has_many :hearing_tests, through: :mds_reports
  has_many :immunizations, through: :mds_reports
  has_many :injury_illnesses, through: :mds_reports
  has_many :other_employments, through: :mds_reports
  has_many :physical_activities, through: :mds_reports
  has_many :surgeries, through: :mds_reports
  has_many :tobacco_and_alcohols, through: :mds_reports
 


  def self.to_csv
      CSV.generate(headers: true) do |csv|
      csv << column_names
      all.each do |patient|
        csv << patient.attributes.values_at(*column_names)
      end
    end
  end

private

def self.ransackable_attributes(auth_object = nil)
  %w(date_of_birth) + _ransackers.keys
end
end
