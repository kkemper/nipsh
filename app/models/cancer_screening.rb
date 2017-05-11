class CancerScreening < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(psa dre fob colonoscopy pap_smear breast_exam mammogram skin testicular exam_date created_at,         updated_at,         psa_result dre_result fob_result colonoscopy_result pap_smear_result breast_exam_result mammogram_result skin_result testicular_result) + _ransackers.keys
  end
end
