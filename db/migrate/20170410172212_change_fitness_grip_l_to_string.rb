class ChangeFitnessGripLToString < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_grip_l
    add_column :fitness_test_tests, :fitness_grip_l, :string
  end
end
