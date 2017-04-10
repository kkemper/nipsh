class ChangeFitnessTerminationToDoublePrecision < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_termination
    add_column :fitness_test_tests, :fitness_termination, :float
  end
end
