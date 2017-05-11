class LabDatum < ActiveRecord::Base
	belongs_to :mds_patient

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(lab_date wbc_count hemoglobin hematocrit sgot_ast sgpt_alt triglyceride cholesterol ldl hdl glucose bun creatinine urine_blood urine_glucose urine_protein) + _ransackers.keys
  end
end
