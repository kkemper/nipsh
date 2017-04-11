class CreateOhmHearings < ActiveRecord::Migration
  def change
    create_table :ohm_hearings do |t|
      t.datetime :moddate
      t.string :ssn
      t.string :ohm_L500k
      t.string :ohm_R500k
      t.string :ohm_l1k
      t.string :ohm_r1k
      t.string :ohm_l2k
      t.string :ohm_r2k
      t.string :ohm_l3k
      t.string :ohm_r3k
      t.string :ohm_l4k
      t.string :ohm_r4k
      t.string :ohm_l6k
      t.string :ohm_r6k
      t.string :ohm_l8k
      t.string :ohm_r8k

      t.timestamps null: false
    end
  end
end
