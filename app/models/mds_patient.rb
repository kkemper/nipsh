class MdsPatient < ActiveRecord::Base
  belongs_to :patient
  has_many :mds_reports
  has_many :demographics
  has_many :lab_data
  has_many :physical_exams
  has_many :tobacco_and_alcohols, foreign_key:"employee_id"
  has_many :fitness_tests, through: :mds_reports
  has_many :cancer_screenings, through: :mds_reports
  has_many :current_jobs, through: :mds_reports
  has_many :duties, through: :mds_reports
  has_many :family_histories, through: :mds_reports
  has_many :health_conditions, through: :mds_reports
  has_many :hearing_tests, through: :mds_reports
  has_many :immunizations, through: :mds_reports
  has_many :injury_illnesses, through: :mds_reports
  has_many :other_employments, through: :mds_reports
  has_many :physical_activities, through: :mds_reports
  has_many :surgeries, through: :mds_reports
  
end
