class CreateFitnessTests < ActiveRecord::Migration
  def change
    create_table :fitness_tests do |t|
      t.string :report_id
      t.date :fit_test_date
      t.integer :aerobic_test_type
      t.float :aerobic_capacity
      t.float :flex_sit_reach
      t.float :hand_strength
      t.float :leg_strength
      t.float :arm_strength
      t.float :vertical_jump
      t.integer :endurance_push_ups
      t.integer :plank
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
