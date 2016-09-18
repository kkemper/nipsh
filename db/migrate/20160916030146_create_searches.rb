class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :aerobic_test_type
      t.float :aerobic_capacity
      t.float :flex_sit_reach
      t.float :hand_strength
      t.float :leg_strength
      t.float :arm_strength
      t.float :vertical_jump
      t.integer :endurance_push_ups
      t.integer :plank

      t.timestamps null: false
    end
  end
end
