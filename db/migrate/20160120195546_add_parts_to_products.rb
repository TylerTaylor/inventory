class AddPartsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :parts, :text
  end
end
