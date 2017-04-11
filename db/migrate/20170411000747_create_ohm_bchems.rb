class CreateOhmBchems < ActiveRecord::Migration
  def change
    create_table :ohm_bchems do |t|
      t.datetime :moddate
      t.string :ssn
      t.integer :ohm_sgot
      t.integer :ohm_sgpt
      t.integer :ohm_trigly
      t.integer :ohm_chol
      t.integer :ohm_ldl
      t.integer :ohm_ldh
      t.integer :ohm_hdl
      t.integer :ohm_glucose
      t.integer :ohm_bun
      t.integer :ohm_creatinine

      t.timestamps null: false
    end
  end
end
