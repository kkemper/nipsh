class ChangeMdsReportsToRemoveDemographicId < ActiveRecord::Migration
  def change
    remove_column :mds_reports, :demographic_id
    add_column :mds_reports, :patient_id, :string
  end
end
