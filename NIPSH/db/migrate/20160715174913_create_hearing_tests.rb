class CreateHearingTests < ActiveRecord::Migration
  def change
    create_table :hearing_tests do |t|
      t.string :report_id
      t.date :hearing_date
      t.integer :left_500
      t.integer :right_500
      t.integer :left_1000
      t.integer :right_1000
      t.integer :left_2000
      t.integer :right_2000
      t.integer :left_3000
      t.integer :right_3000
      t.integer :left_4000
      t.integer :right_4000
      t.integer :left_6000
      t.integer :right_6000
      t.integer :left_8000
      t.integer :right_8000
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
