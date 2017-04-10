class ChangeFitnessQ2ToDoublePrecision < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_q_2
    add_column :fitness_test_tests, :fitness_q_2, :float
  end
end
