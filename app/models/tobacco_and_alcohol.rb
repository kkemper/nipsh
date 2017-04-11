class TobaccoAndAlcohol < ActiveRecord::Base
	belongs_to :mds_report, foreign_key: "employee_id"
end
