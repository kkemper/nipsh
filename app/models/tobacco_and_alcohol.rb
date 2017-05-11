class TobaccoAndAlcohol < ActiveRecord::Base
  belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(smoke pack_count chew_tobacco smoke_cigar smoke_cessation cessation_success alcohol created_at,       updated_at,       start_smoke stop_smoke alcohol_count) + _ransackers.keys
  end
end
