class CreateBsdiDietBarriers < ActiveRecord::Migration
  def change
    create_table :bsdi_diet_barriers do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_rfc_diet
      t.binary :bsdi_diet_barrier_unfamililar
      t.binary :bsdi_diet_barrier_time
      t.binary :bsdi_diet_barrier_people
      t.binary :bsdi_diet_barrier_taste
      t.binary :bsdi_diet_barrier_other
      t.binary :bsdi_diet_barrier_expense

      t.timestamps null: false
    end
  end
end
