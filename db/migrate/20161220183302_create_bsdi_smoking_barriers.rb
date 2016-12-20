class CreateBsdiSmokingBarriers < ActiveRecord::Migration
  def change
    create_table :bsdi_smoking_barriers do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_rfc_smoking
      t.binary :bsdi_smoke_barrier_knowledge
      t.binary :bsdi_smoke_barrier_temptation
      t.binary :bsdi_smoke_barrier_friends
      t.binary :bsdi_smoke_barrier_weight
      t.binary :bsdi_smoke_barrier_stress
      t.binary :bsdi_smoke_barrier_other

      t.timestamps null: false
    end
  end
end
