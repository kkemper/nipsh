class AddChangePatientIdToMdsPatientIdOnMdsReport < ActiveRecord::Migration
  def change
    rename_column :mds_report, :patient_id, :mds_patient_id
  end
end
