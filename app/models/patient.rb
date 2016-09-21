class Patient < ActiveRecord::Base
	has_many :reports
	has_many :lab_data
	has_many :physical_exams
  belongs_to :mds_reports

	def self.search(search)
		where("lname ILIKE ? OR fname ILIKE ?", "%#{search}%", "%#{search}%")
	end
end
