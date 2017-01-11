class CreatePsychDemographics < ActiveRecord::Migration
  def change
    create_table :psych_demographics do |t|
      t.string :research_id
      t.boolean :gender
      t.integer :age
      t.integer :ethnicity

      t.timestamps null: false
    end
  end
end
