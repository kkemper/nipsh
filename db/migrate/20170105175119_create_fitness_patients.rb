class CreateFitnessPatients < ActiveRecord::Migration
  def change
    create_table :fitness_patients do |t|
      t.string :fitness_patient_id
      t.string :fitness_lname
      t.string :fitness_fname
      t.string :fitness_dept
      t.binary :fitness_gender

      t.timestamps null: false
    end
  end
end
