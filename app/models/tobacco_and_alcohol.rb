class TobaccoAndAlcohol < ActiveRecord::Base
	belongs_to :mds_report, foreign_key: "report_id"
end
