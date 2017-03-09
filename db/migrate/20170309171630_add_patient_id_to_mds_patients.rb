class AddPatientIdToMdsPatients < ActiveRecord::Migration
  def change
    add_column :mds_patients, :patient_id, :string
  end
end
