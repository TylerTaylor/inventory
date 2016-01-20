class AddCaseIdToParts < ActiveRecord::Migration
  def change
    add_column :parts, :case_id, :string
  end
end
