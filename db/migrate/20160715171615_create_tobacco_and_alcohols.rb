class CreateTobaccoAndAlcohols < ActiveRecord::Migration
  def change
    create_table :tobacco_and_alcohols do |t|
      t.string :report_id
      t.boolean :smoke
      t.date :start_smoke
      t.date :stop_smoke
      t.integer :pack_count
      t.boolean :chew_tobacco
      t.boolean :smoke_cigar
      t.boolean :smoke_cessation
      t.boolean :cessation_success
      t.boolean :alcohol
      t.boolean :alcohol_count
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
