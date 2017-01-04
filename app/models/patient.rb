class Patient < ActiveRecord::Base
	has_many :mds_reports
	has_many :lab_data
	has_many :physical_exams
  has_many :fitness_tests, through: :mds_reports
end
