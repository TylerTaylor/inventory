class AddProductIdToParts < ActiveRecord::Migration
  def change
    add_column :parts, :product_id, :string
  end
end
