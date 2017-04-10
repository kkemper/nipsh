class ChangeFitnessTestTypeToString < ActiveRecord::Migration
  def change
      remove_column :fitness_test_tests, :fitness_test_type
    add_column :fitness_test_tests, :fitness_test_type, :string
  end
end
