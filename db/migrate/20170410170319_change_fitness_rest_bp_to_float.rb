class ChangeFitnessRestBpToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_rest_dbp
    add_column :fitness_test_tests, :fitness_rest_dbp, :float
  end
end
