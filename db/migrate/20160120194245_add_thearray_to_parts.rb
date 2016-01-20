class AddThearrayToParts < ActiveRecord::Migration
  def change
    add_column :parts, :thearray, :text
  end
end
