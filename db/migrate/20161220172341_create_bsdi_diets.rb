class CreateBsdiDiets < ActiveRecord::Migration
  def change
    create_table :bsdi_diets do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_breakfast
      t.integer :bsdi_fruits
      t.integer :bsdi_vegetables
      t.integer :bsdi_grains
      t.integer :bsdi_grain_emphasis
      t.integer :bsdi_red_meat
      t.integer :bsdi_lean_meat
      t.integer :bsdi_dairy
      t.integer :bsdi_dairy_emphasis
      t.integer :bsdi_fats_and_oils
      t.integer :bsdi_nutrition_status
      t.binary :bsdi_nut_missing_values

      t.timestamps null: false
    end
  end
end
