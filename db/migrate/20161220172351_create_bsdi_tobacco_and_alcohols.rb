class CreateBsdiTobaccoAndAlcohols < ActiveRecord::Migration
  def change
    create_table :bsdi_tobacco_and_alcohols do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_tobacco
      t.integer :bsdi_alcohol
      t.integer :bsdi_binge_drinking
      t.integer :bsdi_medication_relax

      t.timestamps null: false
    end
  end
end
