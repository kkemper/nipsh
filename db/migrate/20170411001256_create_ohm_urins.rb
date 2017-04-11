class CreateOhmUrins < ActiveRecord::Migration
  def change
    create_table :ohm_urins do |t|
      t.datetime :moddate
      t.string :ssn
      t.string :ohm_occblood
      t.string :ohm_uringlucose
      t.string :ohm_protein

      t.timestamps null: false
    end
  end
end
