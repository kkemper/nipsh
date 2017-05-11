class ChangeEmployeeIdToMdsPatientId < ActiveRecord::Migration
  def change
    rename_column :demographics, :employee_id, :mds_patient_id
  end
end
