class CreateOhmImmunes < ActiveRecord::Migration
  def change
    create_table :ohm_immunes do |t|
      t.datetime :moddate
      t.string :ssn
      t.string :ohm_immune_type
      t.string :ohm_immune_note

      t.timestamps null: false
    end
  end
end
