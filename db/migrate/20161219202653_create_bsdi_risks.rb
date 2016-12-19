class CreateBsdiRisks < ActiveRecord::Migration
  def change
    create_table :bsdi_risks do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_risk_stratification
      t.integer :bsdi_risk_factor_count
      t.integer :bsdi_self_rating

      t.timestamps null: false
    end
  end
end
