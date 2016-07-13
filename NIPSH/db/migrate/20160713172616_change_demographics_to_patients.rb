class ChangeDemographicsToPatients < ActiveRecord::Migration
  def change
  	rename_table :demographics, :patients
  end
end
