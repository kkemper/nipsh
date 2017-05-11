class FitnessReport < ActiveRecord::Base
  belongs_to :fitness_patients
  has_many :fitness_departments
  has_many :fitness_test_tests

    private

  def self.ransackable_attributes(auth_object = nil)
    %w( fitness_report_id fitness_patient_id fitness_test_date) + _ransackers.keys
  end
end
