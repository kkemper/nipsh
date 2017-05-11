class FitnessPatient < ActiveRecord::Base
  has_many :fitness_reports
  has_many :fitness_departments, through: :fitness_reports
  has_many :fitness_test_tests, through: :fitness_reports
  belongs_to :patient

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(fitness_lname fitness_fname fitness_dept fitness_gender) + _ransackers.keys
  end
end
