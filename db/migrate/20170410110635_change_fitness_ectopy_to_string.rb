class ChangeFitnessEctopyToString < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_ectopy
    add_column :fitness_test_tests, :fitness_ectopy, :string
  end
end
