class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :parts, :thearray
  end
end
