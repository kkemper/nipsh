class BsdiHosp < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_hospitalization) + _ransackers.keys
  end
end
