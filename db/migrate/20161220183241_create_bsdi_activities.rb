class CreateBsdiActivities < ActiveRecord::Migration
  def change
    create_table :bsdi_activities do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_rfc_activity
      t.binary :bsdi_active_barrier_time
      t.binary :bsdi_active_barrier_people
      t.binary :bsdi_active_barrier_unfamiliar
      t.binary :bsdi_active_barrier_resources
      t.binary :bsdi_active_barrier_unpleasant
      t.binary :bsdi_active_barrier_medical_worry
      t.binary :bsdi_active_barrier_intimidating
      t.binary :bsdi_active_barrier_embarrassed
      t.binary :bsdi_active_barrier_other
      t.binary :bsdi_active_barrier_injury

      t.timestamps null: false
    end
  end
end
