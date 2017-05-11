class ChangeMdsPatientIdToEmployeeId < ActiveRecord::Migration
  def change
    rename_column :demographics, :mds_patient_id, :employee_id
  end
end
