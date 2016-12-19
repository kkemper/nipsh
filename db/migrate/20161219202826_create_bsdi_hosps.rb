class CreateBsdiHosps < ActiveRecord::Migration
  def change
    create_table :bsdi_hosps do |t|
      t.string :bsdi_report_id
      t.binary :bsdi_hospitalization

      t.timestamps null: false
    end
  end
end
