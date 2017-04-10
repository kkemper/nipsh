class ChangeFitnessRestSbpToFloat < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_rest_sbp
    add_column :fitness_test_tests, :fitness_rest_sbp, :float
  end
end
