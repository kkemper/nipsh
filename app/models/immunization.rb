class Immunization < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(immunization_date hepatitis_b hep_b_titer_1 hep_b_titer_1_date heb_b_titer_2 hep_b_titer_2_date hep_a influenza tb_test tb_test_date tb_quantiferon hep_c) + _ransackers.keys
  end
end
