class FitnessDepartment < ActiveRecord::Base
  belongs_to :fitness_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(fitness_dept_id fitness_dept_name) + _ransackers.keys
  end
end
