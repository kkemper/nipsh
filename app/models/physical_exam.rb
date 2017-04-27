class PhysicalExam < ActiveRecord::Base
	belongs_to :mds_patient

  private

  def self.ransackable_attributes(auth_object = nil)
    %w(exam_date systolic diastolic pulse weight) + _ransackers.keys
  end
end
