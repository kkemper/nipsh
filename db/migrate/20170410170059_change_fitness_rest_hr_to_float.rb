class ChangeFitnessRestHrToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_rest_hr
    add_column :fitness_test_tests, :fitness_rest_hr, :float
  end
end
