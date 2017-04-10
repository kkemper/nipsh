class ChangeFitnessPreOrPostToString < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_pre_or_post
    add_column :fitness_test_tests, :fitness_pre_or_post, :string
  end
end
