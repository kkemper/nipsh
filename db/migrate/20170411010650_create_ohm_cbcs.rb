class CreateOhmCbcs < ActiveRecord::Migration
  def change
    create_table :ohm_cbcs do |t|
      t.datetime :moddate
      t.string :ssn
      t.integer :ohm_wbc
      t.integer :ohm_hemo
      t.string :ohm_hema

      t.timestamps null: false
    end
  end
end
