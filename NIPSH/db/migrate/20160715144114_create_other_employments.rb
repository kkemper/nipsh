class CreateOtherEmployments < ActiveRecord::Migration
  def change
    create_table :other_employments do |t|
      t.integer :construction_years
      t.integer :other_ml_years
      t.integer :retail_years
      t.integer :lawn_years
      t.integer :admin_years
      t.integer :manf_years
      t.integer :healthcare_years
      t.integer :other_years
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
