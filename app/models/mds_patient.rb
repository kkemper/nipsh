class MdsPatient < ActiveRecord::Base
  belongs_to :patient
  has_many :mds_reports
end
