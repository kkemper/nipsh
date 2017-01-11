class CreatePsychEmployments < ActiveRecord::Migration
  def change
    create_table :psych_employments do |t|
      t.string :research_id
      t.string :department
      t.string :position
      t.boolean :prior_pub_saf_exprnce
      t.integer :yrs_exprnce_pub_saf

      t.timestamps null: false
    end
  end
end
