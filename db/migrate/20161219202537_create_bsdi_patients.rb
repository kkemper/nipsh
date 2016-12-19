class CreateBsdiPatients < ActiveRecord::Migration
  def change
    create_table :bsdi_patients do |t|
      t.string :bsdi_id
      t.string :bsdi_psmid
      t.string :bsdi_fname
      t.string :bsdi_lname
      t.binary :bsdi_gender
      t.date :bsdi_birthdate
      t.string :bsdi_previous_id

      t.timestamps null: false
    end
  end
end
