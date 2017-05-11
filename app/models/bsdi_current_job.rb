class BsdiCurrentJob < ActiveRecord::Base
  belongs_to :bsdi_report

  private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_organization bsdi_department bsdi_service bsdi_job_title) + _ransackers.keys
  end
end
