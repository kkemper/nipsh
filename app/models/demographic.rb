class Demographic < ActiveRecord::Base
	belongs_to :mds_patient

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(mds_patient_id gender ethnicity race marital_status ed_level) + _ransackers.keys
  end
end
