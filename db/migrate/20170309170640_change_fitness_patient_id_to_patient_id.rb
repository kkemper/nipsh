class ChangeFitnessPatientIdToPatientId < ActiveRecord::Migration
  def change
    rename_column :fitness_patients, :fitness_patient_id, :patient_id
  end
end
