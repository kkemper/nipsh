class AddChangePatientIdToMdsPatientIdOnMdsReport < ActiveRecord::Migration
  def change
    rename_column :mds_reports, :patient_id, :mds_patient_id
  end
end
