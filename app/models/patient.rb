class Patient < ActiveRecord::Base
	has_many :reports
	has_many :lab_data
	has_many :physical_exams

	def self.search(search)
		where ("lname LIKE ?", "%#{search}%")
		where ("fname LIKE ?", "%#{search}%")
	end
end
