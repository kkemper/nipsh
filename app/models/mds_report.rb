class MdsReport < ActiveRecord::Base
	belongs_to :mds_patient
	has_one :cancer_screening
	has_one :current_job
	has_one :duty
	has_one :family_history
	has_one :fitness_test
	has_one :health_condition
	has_one :hearing_test
	has_one :immunization
	has_one :injury_illness
	has_one :other_employment
	has_one :physical_activity
	has_one :surgery
	has_one :tobacco_and_alcohol
end
