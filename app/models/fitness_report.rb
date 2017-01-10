class FitnessReport < ActiveRecord::Base
  belongs_to :fitness_patients
  has_many :fitness_departments
  has_many :fitness_test_tests
end
