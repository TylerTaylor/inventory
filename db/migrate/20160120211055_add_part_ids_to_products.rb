class AddPartIdsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :part_ids, :integer
  end
end
