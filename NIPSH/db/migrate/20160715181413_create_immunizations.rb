class CreateImmunizations < ActiveRecord::Migration
  def change
    create_table :immunizations do |t|
      t.string :report_id
      t.date :immunization_date
      t.integer :hepatitis_b
      t.integer :hep_b_titer_1
      t.date :hep_b_titer_1_date
      t.integer :heb_b_titer_2
      t.date :hep_b_titer_2_date
      t.integer :hep_a
      t.boolean :influenza
      t.integer :tb_test
      t.date :tb_test_date
      t.boolean :tb_quantiferon
      t.integer :hep_c
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
