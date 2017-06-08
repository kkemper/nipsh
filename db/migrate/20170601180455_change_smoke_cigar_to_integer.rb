class ChangeSmokeCigarToInteger < ActiveRecord::Migration
  def change
    remove_column :tobacco_and_alcohols, :smoke_cigar
    add_column :tobacco_and_alcohols, :smoke_cigar, :integer
  end
end
