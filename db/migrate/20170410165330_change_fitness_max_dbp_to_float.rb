class ChangeFitnessMaxDbpToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_max_dbp
    add_column :fitness_test_tests, :fitness_max_dbp, :float
  end
end
