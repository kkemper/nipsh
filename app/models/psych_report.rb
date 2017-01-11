class PsychReport < ActiveRecord::Base
  has_one :psych_background
  has_one :psych_calc
  has_one :psych_demographic
  has_one :psych_employment
end
