class ChangeFitnessMaxHrToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_max_hr
    add_column :fitness_test_tests, :fitness_max_hr, :float
  end
end
