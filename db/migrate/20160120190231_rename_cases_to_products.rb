class RenameCasesToProducts < ActiveRecord::Migration
  def change
    rename_table :cases, :products
  end
end
