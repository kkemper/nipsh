class ChangeFitnessQ1ToDoublePrecision < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_q_1
    add_column :fitness_test_tests, :fitness_q_1, :float
  end
end
