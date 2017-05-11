class PsychEmployment < ActiveRecord::Base
  belongs_to :psych_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(department position prior_pub_saf_exprnce yrs_exprnce_pub_saf) + _ransackers.keys
  end
end
