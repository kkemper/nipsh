class CreateOhmPfts < ActiveRecord::Migration
  def change
    create_table :ohm_pfts do |t|
      t.datetime :moddate
      t.string :ssn
      t.integer :ohm_height
      t.integer :ohm_weight
      t.integer :ohm_bp
      t.integer :ohm_fvc
      t.integer :ohm_fev1
      t.integer :ohm_fev1fvc
      t.integer :ohm_fvcpr
      t.integer :ohm_fev1pr

      t.timestamps null: false
    end
  end
end
