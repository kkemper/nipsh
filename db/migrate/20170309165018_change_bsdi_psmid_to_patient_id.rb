class ChangeBsdiPsmidToPatientId < ActiveRecord::Migration
  def change
    rename_column :bsdi_patients, :bsdi_psmid, :patient_id
  end
end
