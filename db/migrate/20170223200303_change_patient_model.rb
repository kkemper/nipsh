class ChangePatientModel < ActiveRecord::Migration
  def change
    remove_column :patients, :patient_id
    remove_column :patients, :employee_id
    remove_column :patients, :psmsid
    add_column :patients, :ssn, :string
    add_column :patients, :gender, :integer
    add_column :patients, :race, :integer
  end
end
