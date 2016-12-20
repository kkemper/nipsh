class CreateBsdiWeights < ActiveRecord::Migration
  def change
    create_table :bsdi_weights do |t|
      t.string :bsdi_report_id
      t.integer :rfc_weight
      t.binary :bsdi_weight_barrier_knowledge
      t.binary :bsdi_weight_barrier_access
      t.binary :bsdi_weight_barrier_social
      t.binary :bsdi_weight_barrier_exercise
      t.binary :bsdi_weight_barrier_stress

      t.timestamps null: false
    end
  end
end
