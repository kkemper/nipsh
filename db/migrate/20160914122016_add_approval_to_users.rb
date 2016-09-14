class AddApprovalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :approval_digest, :string
    add_column :users, :approved_at, :datetime
    add_column :users, :denial_digest, :string
    add_column :users, :denial_at, :datetime
  end
end
