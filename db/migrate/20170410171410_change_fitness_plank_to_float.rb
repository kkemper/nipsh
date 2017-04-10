class ChangeFitnessPlankToFloat < ActiveRecord::Migration
  def change
      remove_column :fitness_test_tests, :fitness_plank
    add_column :fitness_test_tests, :fitness_plank, :float
  end
end
