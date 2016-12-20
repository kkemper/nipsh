class CreateBsdiAlcoholBarriers < ActiveRecord::Migration
  def change
    create_table :bsdi_alcohol_barriers do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_rfc_alcohol
      t.binary :bsdi_alcohol_barrier_knowledge
      t.binary :bsdi_alcohol_barrier_temptation
      t.binary :bsdi_alcohol_barrier_friends
      t.binary :bsdi_alcohol_barrier_perception
      t.binary :bsdi_alcohol_barrier_stress
      t.binary :bsdi_alcohol_barrier_other

      t.timestamps null: false
    end
  end
end
