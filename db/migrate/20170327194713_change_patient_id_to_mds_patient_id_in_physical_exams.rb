class ChangePatientIdToMdsPatientIdInPhysicalExams < ActiveRecord::Migration
  def change
    rename_column :physical_exams, :patient_id, :mds_patient_id
    rename_column :lab_data, :patient_id, :mds_patient_id
  end
end
