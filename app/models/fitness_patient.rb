class FitnessPatient < ActiveRecord::Base
  has_many :fitness_reports
  has_many :fitness_departments, through: :fitness_reports
  has_many :fitness_test_tests, through: :fitness_repots
end
