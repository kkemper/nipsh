class FamilyHistory < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(male_heart_disease female_heart_disease male_alcohol female_alcohol male_hypertension female_hypertension) + _ransackers.keys
  end
end
