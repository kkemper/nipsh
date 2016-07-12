class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :patient_id
      t.string :lname
      t.string :fname
      t.string :mname
      t.date :date_of_birth
      t.integer :gender
      t.integer :race
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
