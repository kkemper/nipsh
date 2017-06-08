class RemoveAlcoholUserFromTobaccoAndAlcohols < ActiveRecord::Migration
  def change
    remove_column :tobacco_and_alcohols, :alcohol_user
  end
end
