class CreateBsdiSmokings < ActiveRecord::Migration
  def change
    create_table :bsdi_smokings do |t|
      t.string :bsdi_report_id
      t.binary :bsdi_smoking_status

      t.timestamps null: false
    end
  end
end
